DROP DATABASE IF EXISTS Tienda_Informatica;
CREATE DATABASE Tienda_Informatica;
USE Tienda_Informatica;

CREATE TABLE Fabricantes(
	codigo INT AUTO_INCREMENT ,
    nombre VARCHAR(100),
	PRIMARY KEY (codigo)
) Engine=InnoDB;

CREATE TABLE Articulos(
	codigo INT AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio INT,
    FK_codigo_Fabricante INT NULL, 
    PRIMARY KEY(codigo),
	CONSTRAINT FK_codigo_Fabricante FOREIGN KEY (FK_codigo_Fabricante)
	REFERENCES Fabricantes(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) Engine=InnoDB;