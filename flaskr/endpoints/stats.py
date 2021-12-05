from flask import Blueprint, jsonify
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


@bp.route("/user/<email>")
def userStats(email):
    conn = db.get_db()

    query = f"""SELECT COUNT(*)
                FROM Record R
                WHERE R.email = '{email}'"""
    count = conn.execute(text(query)).one()[0]

    res = {
        "count": count
    }

    return jsonify(res)


@bp.route("/top/servants")
def topServants():
    conn = db.get_db()

    query = f"""SELECT R.email, name, surname, department, COUNT(*) as records
                FROM Record R
                JOIN Users U ON R.email = U.email
                JOIN PublicServant PS ON R.email = PS.email
                GROUP BY R.email, U.name, U.surname, department
                ORDER BY records DESC
                LIMIT 5"""
    rows = conn.execute(text(query)).fetchall()

    servants = []
    for r in rows:
        servants.append(r._asdict())

    
    return jsonify(servants) 


@bp.route("/top/diseases/infected")
def mostInfectiousDiseases():
    conn = db.get_db()

    query = f"""SELECT D.description as name, pathogen, SUM(R.total_deaths + R.total_patients) as infected
                FROM Record R
                JOIN Disease D ON R.disease_code = D.disease_code
                GROUP BY D.description, pathogen
                ORDER BY infected DESC
                LIMIT 5"""
    rows = conn.execute(text(query)).fetchall()

    diseases = []
    for r in rows:
        diseases.append(r._asdict())

    
    return jsonify(diseases)


@bp.route("/top/diseases/newest")
def oldestDiseases():
    conn = db.get_db()

    query = f"""SELECT D.description as name, cname as country, first_enc_date
                FROM Disease D
                JOIN Discover DS ON D.disease_code = DS.disease_code
                ORDER BY first_enc_date DESC
                LIMIT 7"""
    rows = conn.execute(text(query)).fetchall()

    diseases = []
    for r in rows:
        diseases.append(r._asdict())

    
    return jsonify(diseases)


@bp.route("/top/diseases/types")
def commonDiseaseTypes():
    conn = db.get_db()

    query = f"""SELECT DT.description as name, COUNT(*) as diseases
                FROM DiseaseType DT
                JOIN Disease D ON DT.id = D.id
                GROUP BY DT.id
                ORDER BY diseases DESC
                LIMIT 7"""
    rows = conn.execute(text(query)).fetchall()

    diseases = []
    for r in rows:
        diseases.append(r._asdict())

    
    return jsonify(diseases)

@bp.route("/top/doctors")
def topDoctors():
    conn = db.get_db()

    query = f"""SELECT D.email, name, surname, degree, COUNT(*) as specializations
                FROM Specialize S
                JOIN Users U ON S.email = U.email
                JOIN Doctor D ON S.email = D.email
                JOIN DiseaseType DT ON S.id = DT.id
                GROUP BY D.email, name, surname, degree
                ORDER BY specializations DESC
                LIMIT 5"""
    rows = conn.execute(text(query)).fetchall()

    doctors = []
    for r in rows:
        doctor = r._asdict()
        query = f"""SELECT description
                    FROM Specialize S
                    JOIN DiseaseType DT ON S.id = DT.id
                    WHERE S.email = '{doctor["email"]}'"""
        rows2 = conn.execute(text(query)).fetchall()

        specializations = []
        for r in rows2:
            specializations.append(r._asdict()["description"])
        doctor["specializations"] = specializations

        doctors.append(doctor)

    
    return jsonify(doctors)
