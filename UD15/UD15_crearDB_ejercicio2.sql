DROP DATABASE IF EXISTS PiezasProveedores;
CREATE DATABASE PiezasProveedores;
USE PiezasProveedores;

CREATE TABLE Piezas(
	codigo INT AUTO_INCREMENT ,
    nombre VARCHAR(100),
    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Proveedores(
	id CHAR(4),
	nombre VARCHAR(100),
    PRIMARY KEY (id)
) ENGINE = InnoDB;


CREATE TABLE Suministra(
	precio INT,
    FK_codigo_Piezas INT,
    FK_id_Proveedores CHAR(4),
    PRIMARY KEY (FK_codigo_Piezas,FK_id_Proveedores),
    CONSTRAINT FK_codigo_Piezas FOREIGN KEY (FK_codigo_Piezas)
	REFERENCES Piezas(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
        
	CONSTRAINT FK_id_Proveedores FOREIGN KEY (FK_id_Proveedores)
	REFERENCES Proveedores(id)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;

