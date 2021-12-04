from flask import Blueprint, jsonify, make_response
from sqlalchemy import text
from ..utils import db


bp = Blueprint("stats", __name__, url_prefix="/stats")


@bp.route("/")
def stats():
    conn = db.get_db()

    countries = conn.execute(text("SELECT COUNT(*) FROM Country")).one()._asdict()["count"]
    records = conn.execute(text("SELECT COUNT(*) FROM Record")).one()._asdict()["count"]
    diseases = conn.execute(text("SELECT COUNT(*) FROM Disease")).one()._asdict()["count"]
    publicServants = conn.execute(text("SELECT COUNT(*) FROM PublicServant")).one()._asdict()["count"]

    res = {
        "countries": countries,
        "records": records,
        "diseases": diseases,
        "publicServants": publicServants
    }

    return jsonify(res)

