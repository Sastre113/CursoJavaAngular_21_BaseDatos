DROP DATABASE IF EXISTS Directores;
CREATE DATABASE Directores;
USE Directores;

CREATE TABLE Despachos(
	numero INT UNIQUE,
    capacidad INT NULL,
    PRIMARY KEY (numero)
) ENGINE = InnoDB;

CREATE TABLE Directores(
	dni VARCHAR(8) UNIQUE,
    NomApels VARCHAR(255) NULL,
    FK_numero_Despachos INT,
    FK_dnijefe_Directores VARCHAR(8),
    PRIMARY KEY (dni),
    CONSTRAINT FK_numero_Despachos FOREIGN KEY (FK_numero_Despachos)
	REFERENCES Despachos(numero)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
        
	CONSTRAINT FK_dnijefe_Directores FOREIGN KEY (FK_dnijefe_Directores)
	REFERENCES Directores(dni)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;
