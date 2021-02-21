DROP DATABASE IF EXISTS GrandesAlmacenes;
CREATE DATABASE GrandesAlmacenes;
USE GrandesAlmacenes;

CREATE TABLE Productos(
	codigo INT UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio INT,
    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Cajeros(
	codigo INT UNIQUE AUTO_INCREMENT,
	nomapels VARCHAR(255),
    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Maquinas_registradoras(
	codigo INT UNIQUE AUTO_INCREMENT,
	piso INT,
    PRIMARY KEY (codigo) 
) ENGINE = InnoDB;


CREATE TABLE Venta(
	FK_codigo_Productos INT UNIQUE ,
    FK_codigo_Cajeros INT UNIQUE ,
    FK_codigo_Maquinas_registradoras INT UNIQUE ,
    PRIMARY KEY (FK_codigo_Productos,FK_codigo_Cajeros,FK_codigo_Maquinas_registradoras),
    CONSTRAINT FK_codigo_Productos FOREIGN KEY (FK_codigo_Productos)
	REFERENCES Productos(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	
    CONSTRAINT FK_codigo_Cajeros FOREIGN KEY (FK_codigo_Cajeros)
	REFERENCES Cajeros(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
        
	CONSTRAINT FK_codigo_Maquinas_registradoras FOREIGN KEY (FK_codigo_Maquinas_registradoras)
	REFERENCES Maquinas_registradoras(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;
