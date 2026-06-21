from flask import Flask
import psycopg2
import os

app = Flask(__name__)

@app.route("/")
def home():
    conn = psycopg2.connect(
        host=os.getenv("DB_HOST"),
        database=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )

    conn.close()

    return "Database Connected Successfully!"

app.run(host="0.0.0.0", port=5000)
