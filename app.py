from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, Azure! This is a STAGING Flask web app.'

if __name__ == '__main__':
    app.run()
