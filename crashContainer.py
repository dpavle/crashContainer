from flask import Flask
import os
from time import sleep

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/<exit_code>')
def exit_with_code(exit_code):
    os._exit(int(exit_code))

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port="5000")
