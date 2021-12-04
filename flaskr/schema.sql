DROP TABLE IF EXISTS DiseaseType CASCADE;
DROP TABLE IF EXISTS Country CASCADE;
DROP TABLE IF EXISTS Disease CASCADE;
DROP TABLE IF EXISTS Discover CASCADE;
DROP TABLE IF EXISTS Users CASCADE;
DROP TABLE IF EXISTS Admin CASCADE;
DROP TABLE IF EXISTS PublicServant CASCADE;
DROP TABLE IF EXISTS Doctor CASCADE;
DROP TABLE IF EXISTS Specialize CASCADE;
DROP TABLE IF EXISTS Record CASCADE;

CREATE TABLE IF NOT EXISTS DiseaseType (
    id INT UNIQUE NOT NULL, 
    description VARCHAR(300),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Country (
    cname VARCHAR(50) UNIQUE NOT NULL, 
    population BIGINT NOT NULL,
    PRIMARY KEY (cname)
);

CREATE TABLE IF NOT EXISTS Disease (
    disease_code VARCHAR(50) UNIQUE NOT NULL, 
    pathogen VARCHAR(20) NOT NULL, 
    description VARCHAR(300),
    id INT NOT NULL,
    PRIMARY KEY (disease_code),
    FOREIGN KEY (id) REFERENCES DiseaseType
);

CREATE TABLE IF NOT EXISTS Discover (
    cname VARCHAR(50) NOT NULL, 
    disease_code VARCHAR(50) NOT NULL, 
    first_enc_date DATE NOT NULL, 
    PRIMARY KEY (cname, disease_code),
    FOREIGN KEY (cname) REFERENCES Country,
    FOREIGN KEY (disease_code) REFERENCES Disease
);

CREATE TABLE IF NOT EXISTS Users (
    email VARCHAR(60) UNIQUE NOT NULL, 
    name VARCHAR(30) NOT NULL, 
    surname VARCHAR(40) NOT NULL, 
    salary INT, 
    phone VARCHAR(20) NOT NULL, 
    cname VARCHAR(50) NOT NULL, 
    PRIMARY KEY (email),
    FOREIGN KEY (cname) REFERENCES Country
);

CREATE TABLE IF NOT EXISTS Admin (
    email VARCHAR(60) UNIQUE NOT NULL, 
    password VARCHAR(200) NOT NULL, 
    PRIMARY KEY (email),
    FOREIGN KEY (email) REFERENCES Users
);

CREATE TABLE IF NOT EXISTS PublicServant (
    email VARCHAR(60) UNIQUE NOT NULL, 
    department VARCHAR(50) NOT NULL, 
    PRIMARY KEY (email),
    FOREIGN KEY (email) REFERENCES Users
);

CREATE TABLE IF NOT EXISTS Doctor (
    email VARCHAR(60) UNIQUE NOT NULL,
    degree VARCHAR(20) NOT NULL,
    PRIMARY KEY (email),
    FOREIGN KEY (email) REFERENCES Users
);

CREATE TABLE IF NOT EXISTS Specialize (
    id INT NOT NULL,
    email VARCHAR(60) NOT NULL,
    PRIMARY KEY (id, email),
    FOREIGN KEY (id) REFERENCES DiseaseType,
    FOREIGN KEY (email) REFERENCES Doctor
);

CREATE TABLE IF NOT EXISTS Record (
    email VARCHAR(60) NOT NULL, 
    cname VARCHAR(50) NOT NULL, 
    disease_code VARCHAR(50) NOT NULL, 
    total_deaths INT NOT NULL,
    total_patients INT NOT NULL,
    PRIMARY KEY (email, cname, disease_code),
    FOREIGN KEY (email) REFERENCES PublicServant,
    FOREIGN KEY (cname) REFERENCES Country,
    FOREIGN KEY (disease_code) REFERENCES Disease
);
