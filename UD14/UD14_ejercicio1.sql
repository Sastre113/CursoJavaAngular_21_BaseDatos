CREATE DATABASE Meteo;
USE Meteo;

CREATE TABLE Estación (
	identificador MEDIUMINT UNSIGNED NOT NULL,
    latitud VARCHAR(14) NOT NULL,
    longitud VARCHAR(15),
    altitud MEDIUMINT NOT NULL,
    PRIMARY KEY (identificador)
) ENGINE=innoDB;

CREATE TABLE Muestra (
	identificadorestacion MEDIUMINT UNSIGNED NOT NULL,
    fecha DATE NOT NULL,
    temperaturaminima TINYINT,
    temperaturamaxima TINYINT,
    precipitaciones SMALLINT UNSIGNED,
    humedadminima TINYINT UNSIGNED,
    humedadminima TINYINT UNSIGNED,
    velocidadminima SMALLINT UNSIGNED,
    velocidadmaxima SMALLINT UNSIGNED,
    KEY(identificadorestacion),
	FOREIGN KEY (identificadorestacion)
		REFERENCES estacion(identificador)
			ON DELETE NO ACTION
			ON UPDATE CASCADE
) ENGINE=innoDB;