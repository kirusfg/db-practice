import os

from flask import Flask
from flask_cors import CORS


def create_app(test_config=None):
    # create and configure the app
    app = Flask(__name__, instance_relative_config=True, static_folder='app', static_url_path="/")
    CORS(app)
    app.config.from_mapping(
        SECRET_KEY="dev",
        SQLALCHEMY_DATABASE_URI="postgresql://dlwprzunbbzgbc:43e737436d0ed1861056f6c87e5d84a0796fb50f2b5cc23eb54d9868f97ad48f@ec2-54-195-76-73.eu-west-1.compute.amazonaws.com:5432/d9pn9nac30l4hq"
    )

    if app.config["ENV"] != "production":
        app.config.update(
            SQLALCHEMY_DATABASE_URI="postgresql://kirusfg:@localhost:5432/hw"
        )

    if test_config is None:
        # load the instance config, if it exists, when not testing
        app.config.from_pyfile('config.py', silent=True)
    else:
        # load the test config if passed in
        app.config.from_mapping(test_config)

    # ensure the instance folder exists
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    @app.route('/', defaults={'path': ''})
    @app.route('/<path:path>')
    def catch_all(path):
        return app.send_static_file("index.html")

    from .utils import db
    db.init_app(app)

    from . import api
    app.register_blueprint(api.bp)
    
    return app
