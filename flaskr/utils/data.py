from mimesis import Field, Schema
from mimesis.locales import Locale
from sqlalchemy import create_engine, text
import random

# Change these
seed = 323488
db = create_engine("postgresql+psycopg2://admin:@localhost/hw", echo = True, future = True)


random.seed(seed)
dummy = Field(locale = Locale.EN, seed = seed)

def disease_types(n):
    disease_type_schema = Schema(schema = lambda: {
        "id": dummy("increment"),
        "description": dummy("word"),
    })

    disease_types = disease_type_schema.create(iterations = n)
    return disease_types

def countries(n):
    country_schema = Schema(schema = lambda: {
        "cname": dummy("country"),
        "population": random.randint(100_000, 50_000_000),
    })

    countries = country_schema.create(iterations = n)
    return countries

def diseases(n):
    disease_schema = Schema(schema = lambda: {
        "disease_code": dummy("uuid"),
        "pathogen": random.choice(["bacteria", "virus", "fungi"]),
        "description": dummy("sentence"),
    })

    diseases = disease_schema.create(iterations = n)
    return diseases

def discovered(n):
    discovered_schema = Schema(schema = lambda: {
        "first_enc_date": dummy("date"),
    })

    discovered = discovered_schema.create(iterations = n)
    return discovered

def users(n):
    user_schema = Schema(schema = lambda: {
        "email": dummy("email"),
        "name": dummy("name"),
        "surname": dummy("surname"),
        "salary": random.randint(100, 5000),
        "phone": dummy("telephone"),
    })

    users = user_schema.create(iterations = n)
    return users

def public_servants(n):
    public_servants_schema = Schema(schema = lambda: {
        "department": dummy("word"),
    })

    public_servants = public_servants_schema.create(iterations = n)
    return public_servants

def doctors(n):
    doctors_schema = Schema(schema = lambda: {
        "degree": random.choice(["M.D.", "D.O.", "M.B.B.S"]),
    })

    doctors = doctors_schema.create(iterations = n)
    return doctors

def drop():
    with db.connect() as conn:
        conn.execute(text("""
        DROP TABLE IF EXISTS DiseaseType CASCADE;
        DROP TABLE IF EXISTS Country CASCADE;
        DROP TABLE IF EXISTS Disease CASCADE;
        DROP TABLE IF EXISTS Discover CASCADE;
        DROP TABLE IF EXISTS Users CASCADE;
        DROP TABLE IF EXISTS PublicServant CASCADE;
        DROP TABLE IF EXISTS Doctor CASCADE;
        DROP TABLE IF EXISTS Specialize CASCADE;
        DROP TABLE IF EXISTS Record CASCADE
        """))
        conn.commit()

def fill_with_dummy_values():
    dt = disease_types(10)
    dt.append({"id": 11, "description": "infection"})
    dt.append({"id": 12, "description": "virus"})

    c = countries(10)

    d = diseases(20)
    for disease in d:
        d_type = dt[random.randrange(len(dt))]
        disease["id"] = d_type["id"]

    dc = discovered(20)
    for (i, disease) in enumerate(d):
        dc[i]["disease_code"] = disease["disease_code"]
        country = c[random.randrange(len(c))]
        dc[i]["cname"] = country["cname"]

    u = users(100)
    for user in u:
        country = c[random.randrange(len(c))]
        user["cname"] = country["cname"]

    ps = public_servants(random.randrange(len(u)))
    for (i, user) in enumerate(u):
        if i < len(ps):
            ps[i]["email"] = user["email"]
        
    dct = doctors(random.randrange(len(u)))
    for (i, user) in enumerate(u):
        if i < len(dct):
            dct[i]["email"] = user["email"]

    s = []
    for doctor in dct:
        disease_type = dt[random.randrange(len(dt))]
        spec = {"email": doctor["email"], "id": disease_type["id"]}
        s.append(spec)

        disease_type = dt[random.randrange(len(dt))]
        spec = {"email": doctor["email"], "id": disease_type["id"]}
        s.append(spec)
   
    doctor = random.choice(dct)
    disease_type = dt[random.randrange(len(dt))]
    spec = {"email": doctor["email"], "id": disease_type["id"]}
    s.append(spec)


    r = []
    ps_sample = random.sample(ps, 5)
    c_sample = random.sample(c, 5)
    d_sample = random.sample(d, 5)

    for i in range(5):
        r.append({
            "email": ps_sample[i]["email"],
            "cname": c_sample[i]["cname"],
            "disease_code": d_sample[i]["disease_code"],
            "total_patients": random.randrange(c_sample[i]["population"]),
            "total_deaths": random.randrange(c_sample[i]["population"]),
        })

    with db.connect() as conn:
        conn.execute(text("""INSERT INTO DiseaseType (id, description)
            VALUES (:id, :description) 
            ON CONFLICT (id) DO NOTHING"""), dt)
        conn.execute(text("""INSERT INTO Country (cname, population) 
            VALUES (:cname, :population) 
            ON CONFLICT (cname) DO NOTHING"""), c)
        conn.execute(text("""INSERT INTO Disease (disease_code, pathogen, description, id) 
            VALUES (:disease_code, :pathogen, :description, :id) 
            ON CONFLICT (disease_code) DO NOTHING"""), d)
        conn.execute(text("""INSERT INTO Discover (disease_code, cname, first_enc_date) 
            VALUES (:disease_code, :cname, :first_enc_date) 
            ON CONFLICT (cname, disease_code) DO NOTHING"""), dc)
        conn.execute(text("""INSERT INTO Users (email, name, surname, salary, phone, cname) 
            VALUES (:email, :name, :surname, :salary, :phone, :cname) 
            ON CONFLICT (email) DO NOTHING"""), u)
        conn.execute(text("""INSERT INTO PublicServant (email, department)
            VALUES (:email, :department) 
            ON CONFLICT (email) DO NOTHING"""), ps)
        conn.execute(text("""INSERT INTO Doctor (email, degree)
            VALUES (:email, :degree) 
            ON CONFLICT (email) DO NOTHING"""), dct)
        conn.execute(text("""INSERT INTO Specialize (email, id)
            VALUES (:email, :id) 
            ON CONFLICT (email, id) DO NOTHING"""), s)
        conn.execute(text("""INSERT INTO Record (email, cname, disease_code, total_deaths, total_patients) 
            VALUES (:email, :cname, :disease_code, :total_deaths, :total_patients) 
            ON CONFLICT (email, cname, disease_code) DO NOTHING"""), r)
        
        conn.commit()


# drop()
# fill_with_dummy_values()
