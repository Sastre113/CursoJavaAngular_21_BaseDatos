DROP DATABASE IF EXISTS Almacenes;
CREATE DATABASE Almacenes;
USE Almacenes;

CREATE TABLE Almacenes(
	codigo INT,
    Lugar VARCHAR(100),
    capacidad INT,
    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Cajas(
	numreferencia CHAR(5),
    contenido INT,
	valor INT,
    FK_codigo_Almacenes INT NULL, 
    PRIMARY KEY (numreferencia),
    CONSTRAINT FK_codigo_Almacenes FOREIGN KEY (FK_codigo_Almacenes)
	REFERENCES Almacenes(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;