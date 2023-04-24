from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider
from ssl import PROTOCOL_TLS, SSLContext, CERT_NONE
from flask import Flask,request
from flask_cors import CORS

#Crear app de Flask
app = Flask(__name__)
CORS(app)

#Ruta de la app para mandar la info y insertarla en la base de datos
@app.route('/Cassandra', methods=['POST'])
def cassandra():
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


if __name__ == '__main__':
    app.run()