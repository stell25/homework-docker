# flask_web/app.py

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hey, we have Flask in a Docker container! It is 2/18/2025'


if __name__ == '__main__':
     app.run(debug=True, host='0.0.0.0', port = 3333)
