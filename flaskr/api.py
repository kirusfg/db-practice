from flask import Blueprint

from .endpoints import countries, records, users, stats


bp = Blueprint("api", __name__, url_prefix="/api/v1")
bp.register_blueprint(countries.bp)
bp.register_blueprint(records.bp)
bp.register_blueprint(users.bp)
bp.register_blueprint(stats.bp)


@bp.route("/health")
def health():
    return "API is up!"
