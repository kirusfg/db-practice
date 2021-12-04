from flask import g, current_app
from flask.cli import with_appcontext
from sqlalchemy import create_engine, text
from .data import fill_with_dummy_values
import click


def get_db():
    if "db" not in g:
        g.db = create_engine(current_app.config["SQLALCHEMY_DATABASE_URI"], echo = False, future = True).connect()

    return g.db


def close_db(_=None):
    db = g.pop("db", None)

    if db is not None:
        db.close()


def init_app(app):
    app.teardown_appcontext(close_db)
    app.cli.add_command(setup)


@click.command("db-setup")
@with_appcontext
def setup():
    conn = get_db()
    with current_app.open_resource("hw.sql", "r") as file:
        conn.execute(text(file.read()))
        conn.commit()
    fill_with_dummy_values()

