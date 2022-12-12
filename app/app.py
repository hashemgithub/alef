from flask import Flask,render_template
import socket
import psycopg2
import os

app = Flask(__name__)
app.debug = True

@app.route('/')
def index():
    return 'Hello Team, This is Hashem App test!'
@app.route("/healthz")
def index():
    try:
        psycopg2.connect(os.environ.get("DB_URL"))
        return "Well done"
    except:
        return "Maintenance"


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)