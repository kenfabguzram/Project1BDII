import flask

app = flask.Flask(__name__)


@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


@app.route("/select/users", methods=["POST", "GET"])
def select_users():
    json_input = flask.request.get_json()
    return "Users, Received JSON data: " + str(json_input)


@app.route("/select/teachers", methods=["POST", "GET"])
def select_teachers():
    json_input = flask.request.get_json()
    return "Teachers, Received JSON data: " + str(json_input)


@app.route("/select", methods=["POST", "GET"])
def select():
    json_input = flask.request.get_json()
    return str(json_input)
