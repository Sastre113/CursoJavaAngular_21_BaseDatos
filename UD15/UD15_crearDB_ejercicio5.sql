DROP DATABASE IF EXISTS LosInvestigadores;
CREATE DATABASE LosInvestigadores;
USE LosInvestigadores;

CREATE TABLE Facultad(
	codigo INT,
    nombre VARCHAR(100),
    PRIMARY KEY (codigo)
) ENGINE = InnoDB;

CREATE TABLE Investigadores(
	dni VARCHAR(8),
	nomapels VARCHAR(255),
    FK_codigo_Investigadores_Facultad INT ,
    PRIMARY KEY (dni),
	CONSTRAINT FK_codigo_Investigadores_Facultad FOREIGN KEY (FK_codigo_Investigadores_Facultad)
	REFERENCES Facultad(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Equipos(
	numserie CHAR(4),
	nombre VARCHAR(100),
	FK_codigo_Equipos_Facultad INT ,
    PRIMARY KEY (numserie),
    CONSTRAINT FK_codigo_Equipos_Facultad FOREIGN KEY (FK_codigo_Equipos_Facultad)
	REFERENCES Facultad(codigo)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;


CREATE TABLE Reserva(
	comienzo DATETIME,
    fin DATETIME,
	FK_dni_Investigadores VARCHAR(8) UNIQUE ,
    FK_numserie_Equipos CHAR(4) UNIQUE,
    PRIMARY KEY (FK_dni_Investigadores,FK_numserie_Equipos),
    CONSTRAINT FK_dni_Investigadores FOREIGN KEY (FK_dni_Investigadores)
	REFERENCES Investigadores(dni)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	
    CONSTRAINT FK_numserie_Equipos FOREIGN KEY (FK_numserie_Equipos)
	REFERENCES Equipos(numserie)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;

