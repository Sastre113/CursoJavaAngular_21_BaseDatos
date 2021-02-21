DROP DATABASE IF EXISTS PeliculasSalas;
CREATE DATABASE PeliculasSalas;
USE PeliculasSalas;

CREATE TABLE Peliculas(
	codigo INT UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(100) NULL,
    calificacionEdad INT NULL,
    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Salas(
	codigo INT UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(100),
    FK_codigo_Peliculas INT NULL, 
    PRIMARY KEY (codigo),
    CONSTRAINT FK_codigo_Peliculas FOREIGN KEY (FK_codigo_Peliculas)
	REFERENCES Peliculas(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;