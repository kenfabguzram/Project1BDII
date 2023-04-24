import sys
import os
import json
import pyodbc
import socket
from flask import Flask, flash, request, redirect, url_for, send_from_directory
from flask_restful import reqparse, abort, Api, Resource
from threading import Lock
from tenacity import *
from opencensus.ext.azure.trace_exporter import AzureExporter
from opencensus.ext.flask.flask_middleware import FlaskMiddleware
from opencensus.trace.samplers import ProbabilitySampler
import logging
from werkzeug.utils import secure_filename
import uuid
from azure.identity import DefaultAzureCredential
from azure.storage.blob import BlobServiceClient, BlobClient, ContainerClient
from ssl import PROTOCOL_TLS, SSLContext, CERT_NONE
from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider
from flask_cors import CORS


#Setup the blob service client
default_credential = DefaultAzureCredential()
if 'ACCOUNT_URL' in os.environ:
    blob_service_client = BlobServiceClient(os.environ['ACCOUNT_URL'], credential=default_credential)



# Initialize Flask
app = Flask(__name__)
CORS(app)

# Setup Azure Monitor
if 'APPINSIGHTS_KEY' in os.environ:
    middleware = FlaskMiddleware(
        app,
        exporter=AzureExporter(connection_string="InstrumentationKey={0}".format(os.environ['APPINSIGHTS_KEY'])),
        sampler=ProbabilitySampler(rate=1.0),
    )

# Setup Flask Restful framework
api = Api(app)
parser = reqparse.RequestParser()
parser.add_argument('customer')
parser.add_argument('Cursos')
parser.add_argument('archivo')
# Implement singleton to avoid global objects
class ConnectionManager(object):    
    __instance = None
    __connection = None
    __lock = Lock()

    def __new__(cls):
        if ConnectionManager.__instance is None:
            ConnectionManager.__instance = object.__new__(cls)        
        return ConnectionManager.__instance       
    
    def __getConnection(self):
        if (self.__connection == None):
            application_name = ";APP={0}".format(socket.gethostname())  
            self.__connection = pyodbc.connect(os.environ['SQLAZURECONNSTR_WWIF'] + application_name)                  
        
        return self.__connection

    def __removeConnection(self):
        self.__connection = None

    @retry(stop=stop_after_attempt(3), wait=wait_fixed(10), retry=retry_if_exception_type(pyodbc.OperationalError), after=after_log(app.logger, logging.DEBUG))
    def executeQueryJSON(self, procedure, payload=None):
        result = {}  
        try:
            conn = self.__getConnection()

            cursor = conn.cursor()
            
            if payload:
                cursor.execute(f"EXEC {procedure} ?", json.dumps(payload))
            else:
                cursor.execute(f"EXEC {procedure}")

            result = cursor.fetchone()

            if result:
                result = json.loads(result[0])                           
            else:
                result = {}

            cursor.commit()    
        except pyodbc.OperationalError as e:            
            app.logger.error(f"{e.args[1]}")
            if e.args[0] == "08S01":
                # If there is a "Communication Link Failure" error, 
                # then connection must be removed
                # as it will be in an invalid state
                self.__removeConnection() 
                raise                        
        finally:
            cursor.close()
                         
        return result

class Queryable(Resource):
    def executeQueryJson(self, verb, payload=None):
        result = {}  
        entity = type(self).__name__.lower()
        procedure = f"web.{verb}_{entity}"
        result = ConnectionManager().executeQueryJSON(procedure, payload)
        return result

# Customer Class
class Customer(Queryable):
    def get(self, customer_id):     
        customer = {}
        customer["CustomerID"] = customer_id
        result = self.executeQueryJson("get", customer)   
        return result, 200
    
    def put(self):
        args = parser.parse_args()
        customer = json.loads(args['customer'])
        result = self.executeQueryJson("put", customer)
        return result, 201

    def patch(self, customer_id):
        args = parser.parse_args()
        customer = json.loads(args['customer'])
        customer["CustomerID"] = customer_id        
        result = self.executeQueryJson("patch", customer)
        return result, 202

    def delete(self, customer_id):       
        customer = {}
        customer["CustomerID"] = customer_id
        result = self.executeQueryJson("delete", customer)
        return result, 202

# Customers Class
class Customers(Queryable):
    def get(self):     
        result = self.executeQueryJson("get")   
        return result, 200
class Archivo(Queryable):
    def post(self):     
        if request.method == 'POST':
            if 'file' not in request.files:
                flash('No file part')
                return "<p>Upload File!</p>"
        file = request.files['file']
        if file.filename == '':
            return  "<p>Upload No name!</p>"
        filename = secure_filename(file.filename)
        blob_client = blob_service_client.get_blob_client(container='documents', blob=filename)
        blob_client.upload_blob(file)
        return   "<p>Upload!</p>"   
class Cursos(Queryable):
    def get(self):
        return [{"Curso": "Bases de datos", "Escuela": "Computación", "Grupo": 1, "Hora de inicio": "8:00", "Hora final": "9:30", "Profesor": "Juan", "Cupo": 25, "Periodo": "Semestre", "Estado": "Activo" }, { "Curso": "Programación Orientada a Objetos", "Escuela": "Ingeniería en Sistemas", "Grupo": 2, "Hora de inicio": "10:00", "Hora final": "11:30", "Profesor": "María", "Cupo": 30, "Periodo": "Cuatrimestre", "Estado": "Activo" }, { "Curso": "Análisis de Algoritmos", "Escuela": "Ciencias de la Computación", "Grupo": 3, "Hora de inicio": "12:00", "Hora final": "13:30", "Profesor": "Carlos", "Cupo": 20, "Periodo": "Trimestre", "Estado": "Activo" } ]
        #result = self.executeQueryJson("get")   
        #return result, 200

class Cassandra(Queryable):
    def post(self):
        if request.method == 'POST':
            #Get Data
            message = request.get_json()
            # Create authentication info
            # Use username and password provide by Azure Cosmos
            ssl_context = SSLContext(PROTOCOL_TLS)
            ssl_context.verify_mode = CERT_NONE
            auth_provider = PlainTextAuthProvider(username='tfex-cosmos-db-31154', password='C2A2lQkldr8Rx6Uzw6p85GtL5tpBlBx79PB8KShzbQ0q1Zk8xTWzmLisViXYwFagSenr8PoPnEN4ACDbnKKI5g==')
            # Create the connection with cassandra
            cluster = Cluster(['tfex-cosmos-db-31154.cassandra.cosmos.azure.com'], port = 10350, auth_provider=auth_provider,ssl_context=ssl_context)
            # Create the session
            session = cluster.connect()
            # Insert data
            query = 'INSERT INTO "tfex-cosmos-cassandra-keyspace".userlogs (user_id, logline) VALUES (%s, %s)'
            session.execute(query,(message['user_id'],message['logline']))
            # Close the session and the connection
            session.shutdown()
            cluster.shutdown()
            return message
 
# Create API routes
api.add_resource(Customer, '/customer', '/customer/<customer_id>')
api.add_resource(Customers, '/customers')
api.add_resource(Archivo, '/upload')
api.add_resource(Cursos, '/Cursos')
api.add_resource(Cassandra,'/Cassandra')