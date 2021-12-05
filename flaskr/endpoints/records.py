from flask import Blueprint, request, jsonify
from sqlalchemy import text
from ..utils import db


bp = Blueprint("records", __name__, url_prefix="/records")


@bp.route("/")
def records():
    conn = db.get_db()
    page = request.args["page"] if "page" in request.args else 0
    number = request.args["number"] if "number" in request.args else 10
    field = request.args["sortField"] if "sortField" in request.args else "disease"
    order = request.args["sortOrder"] if "sortOrder" in request.args else "asc"
    author = request.args["author"] if "author" in request.args else None

    if field == "country":
        field = "R.cname"
    elif field == "disease":
        field = "D.description"
    elif field == "discover_country":
        field = "DS.cname"
    elif field == "deaths":
        field = "total_deaths"
    elif field == "cured":
        field = "total_patients"

    query = f"""SELECT
                    R.cname as country,
                    R.email,
                    R.disease_code,
                    D.description as disease,
                    first_enc_date,
                    DS.cname as discover_country,
                    pathogen,
                    population,
                    total_deaths as deaths,
                    total_patients as cured,
                    name,
                    surname
                FROM Record R
                JOIN Country C ON R.cname = C.cname
                JOIN Disease D ON R.disease_code = D.disease_code
                JOIN DiseaseType DT ON D.id = DT.id
                JOIN Discover DS ON R.disease_code = DS.disease_code
                JOIN Users U ON R.email = U.email """
    filter = f"WHERE R.email = '{author}' " if author is not None else " "
    sorting = f"""ORDER BY {field} {order}
                  OFFSET {number} * {page}
                  LIMIT {number}"""

    rows = conn.execute(text(query + filter + sorting)).all()

    query = f"""SELECT COUNT(*)
                FROM Record R """
    count = conn.execute(text(query + filter)).one()[0]

    records = []
    for r in rows:
        records.append(r._asdict())

    res = { "count": count, "records": records } 
    return jsonify(res)

