DROP DATABASE IF EXISTS LaAcademia;
CREATE DATABASE LaAcademia;
USE LaAcademia;

CREATE TABLE Profesor(
	dni CHAR(8) UNIQUE,
    nombre VARCHAR(255) UNIQUE,
    apellido1 VARCHAR(15) UNIQUE,
    apellido2 VARCHAR(15) UNIQUE,
    direccion VARCHAR(255),
    titulo VARCHAR(30),
    gana INT NOT NULL,
    PRIMARY KEY (dni)
) ENGINE = InnoDB;

CREATE TABLE Curso(
	cod_curso INT UNIQUE,
    nombre_curso VARCHAR(100),
    maximo_alumno INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    num_horas INT,
    FK_dni_Profesor CHAR(8) UNIQUE,
    PRIMARY KEY (cod_curso),
	CONSTRAINT FK_dni_Profesor FOREIGN KEY (FK_dni_Profesor)
	REFERENCES Profesor(dni)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;


CREATE TABLE Alumno(
	dni CHAR(8) UNIQUE,
    nombre VARCHAR(255) UNIQUE,
    apellido1 VARCHAR(15) UNIQUE,
    apellido2 VARCHAR(15) UNIQUE,
    direccion VARCHAR(255),
    sexo CHAR(1),
    fecha_nacimiento DATE,
	FK_cod_curso_Curso INT,
	PRIMARY KEY (dni),
	CONSTRAINT FK_cod_curso_Curso FOREIGN KEY (FK_cod_curso_Curso)
	REFERENCES Curso(cod_curso)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;
