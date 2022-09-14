-- se elimina la base de datos si existe
DROP DATABASE IF EXISTS stm_nomine;
-- se crea la nueva base de datos
CREATE DATABASE stm_nomine;
-- se usa la base de datos
USE stm_nomine;
-- se crea la tabla empleados
DROP TABLE IF EXISTS employeds;
CREATE TABLE employeds(
    id int(3) UNSIGNED AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    direction VARCHAR(255),
    CONSTRAINT pk_employeds PRIMARY KEY(id)
);
-- se crea la tabla de empleados de planta
DROP TABLE IF EXISTS officialEmployeds;
CREATE TABLE officialEmployeds(
    id int(3) UNSIGNED AUTO_INCREMENT,
    employedId int(3) UNSIGNED,
    rol VARCHAR(255) NOT NULL,
    hourValue DECIMAL(5,2) ,
    workHours int(3) ,
    salary DOUBLE(5,2),
    eps VARCHAR(255) NOT NULL,
    afp VARCHAR(255) NOT NULL,
    arl VARCHAR(255) NOT NULL,
    CONSTRAINT pk_officialEmployeds PRIMARY KEY(id),
    CONSTRAINT fk_official_Employeds FOREIGN KEY(employedIdO) REFERENCES employeds(id)
);
-- se crea la tabla alumnos
DROP TABLE IF EXISTS students;
CREATE TABLE students(
    id int(3) UNSIGNED AUTO_INCREMENT,
    employedIdS int(3) UNSIGNED, 
    note1 DOUBLE(5,2),
    note2 DOUBLE(5,2),
    note3 DOUBLE(5,2),
    definitive DOUBLE(5,2),
    ficha DOUBLE(5,2),
    approve BOOLEAN,
    CONSTRAINT pk_students PRIMARY KEY(id),
    CONSTRAINT fk_students_Employeds FOREIGN KEY(employedIdS) REFERENCES employeds(id)
);
-- se crea la tabla de empresas
DROP TABLE IF EXISTS company;
CREATE TABLE company(
    nit VARCHAR(255) NOT NULL,
    companyName VARCHAR (255) NOT NULL,
    employedId int UNSIGNED,
    CONSTRAINT pk_company_Nit PRIMARY KEY(nit),
    CONSTRAINT fk_company_Employeds FOREIGN KEY(employedId) REFERENCES employeds(id)
);




