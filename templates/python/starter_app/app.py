from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from Python Starter App!"

if __name__ == "__main__":
    # Run on 127.0.0.1:5000 by default
    app.run(debug=True)
