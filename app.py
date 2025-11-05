import os
from flask import Flask, request

# Create a new Flask app
app = Flask(__name__)

# Routes go here:

# These lines start the server if you run this file directly
# They also start the server configured to use the test DB if started in test mode
if __name__ == '__main__':
    app.run(debug = True, port = int(os.environ.get('PORT', 5001)))