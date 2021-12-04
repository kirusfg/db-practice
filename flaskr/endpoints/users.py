from flask import Blueprint, request, jsonify
from sqlalchemy import text
from ..utils import db


bp = Blueprint("users", __name__, url_prefix="/users")


@bp.route("/")
def users():
    conn = db.get_db()
    email = request.args["email"] if "email" in request.args else None

    if email is None:
        query = f"""
            SELECT U.email, name, surname, phone, salary, cname as country, department, degree
            FROM Users U
            LEFT JOIN Doctor D ON U.email = D.email
            LEFT JOIN PublicServant PS ON U.email = PS.email
        """
        rows = conn.execute(text(query)).all()
        records = []
        for r in rows:
            records.append(r._asdict())
        return jsonify(records)
    else:
        query = f"""
            SELECT U.email, name, surname, phone, salary, cname as country, department, degree 
            FROM Users U
            LEFT JOIN Doctor D ON U.email = D.email
            LEFT JOIN PublicServant PS ON U.email = PS.email
            WHERE U.email = '{email}'
        """
        user = [conn.execute(text(query)).one()._asdict()]
        return jsonify(user)

