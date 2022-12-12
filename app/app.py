from flask import Flask,render_template
import socket
import psycopg2
import os

app = Flask(__name__)
app.debug = True


@app.route("/healthz")
def index():
    try:
        psycopg2.connect(dbname=os.environ.get("DB_NAME"), user=os.environ.get("DB_USER"), password=os.environ.get("DB_PASS"), host=os.environ.get("DB_HOST"), port=os.environ.get("DB_PORT") )
        return "Well done"
    except:
        return "Maintenance"


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)