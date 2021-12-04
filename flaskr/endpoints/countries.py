from flask import Blueprint, jsonify, make_response
from sqlalchemy import text
from ..utils import db


bp = Blueprint("countries", __name__, url_prefix="/countries")


@bp.route("/")
def countries():
    conn = db.get_db()

    rows = conn.execute(text("SELECT * FROM Country")).all()

    countries = [] 
    for r in rows:
        countries.append(r._asdict())

    return jsonify(countries)


@bp.route("/<country>")
def country_population(country):
    conn = db.get_db()

    try:
        row = conn.execute(text(f"SELECT * FROM Country WHERE cname = '{country}'")).one()
        return row._asdict()
    except:
        return make_response({"status": "failure", "message": "No such country"}, 404)
        

