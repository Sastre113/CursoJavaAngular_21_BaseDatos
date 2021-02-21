DROP DATABASE IF EXISTS Empleados;
CREATE DATABASE Empleados;
USE Empleados;


CREATE TABLE Departamentos(
	codigo INT,
    nombre VARCHAR(100),
    presupuesto INT,
    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Empleados(
	dni VARCHAR(8),
    nombre VARCHAR(100),
    apellidos VARCHAR(255),
    FK_codigo_Departamentos INT NULL, 
    PRIMARY KEY (dni),
    CONSTRAINT FK_codigo_Departamentos FOREIGN KEY (FK_codigo_Departamentos)
	REFERENCES Departamentos(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;