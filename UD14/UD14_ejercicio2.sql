CREATE DATABASE Biblio;
USE Biblio;

CREATE TABLE Editorial(
	claveeditorial SMALLINT NOT NULL,
    nombre VARCHAR(60),
    direccion VARCHAR(60),
    telefono VARCHAR(15),
    PRIMARY KEY (claveeditorial)
) ENGINE = InnoDB;

CREATE TABLE Libro (
	clavelibro INT NOT NULL,
    titulo VARCHAR(60),
    idioma VARCHAR(15),
    formato VARCHAR(60),
    claveeditorial SMALLINT,
    PRIMARY KEY(clavelibro),
    KEY(claveeditorial),
		FOREIGN KEY (claveeditorial)
		REFERENCES Editorial(claveeditorial)
			ON DELETE SET NULL
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Tema (
	clavetema SMALLINT NOT NULL,
    nombre VARCHAR(40),
    PRIMARY KEY (clavetema)
) ENGINE = InnoDB;

CREATE TABLE Autor (
	claveautor INT NOT NULL,
    nombre VARCHAR(60),
    PRIMARY KEY (claveautor)
) ENGINE = InnoDB;

CREATE TABLE Ejemplar (
	claveejemplar INT NOT NULL,
    clavelibro INT NOT NULL,
	numeroorden SMALLINT NOT NULL,
    edicion SMALLINT,
    ubicacion VARCHAR(15),
    categoria CHAR,
    PRIMARY KEY(claveejemplar),
	FOREIGN KEY (clavelibro)
		REFERENCES Libro(clavelibro)
			ON DELETE CASCADE
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Socio(
	clavesocio INT NOT NULL,
    nombre VARCHAR(60),
    direccion VARCHAR(60),
	telefono VARCHAR(15),
    categoria CHAR,
    PRIMARY KEY(clavesocio)
) ENGINE = InnoDB;

CREATE TABLE Prestamo(
	clavesocio INT,
    claveejemplar INT,
    numeroorden SMALLINT,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE DEFAULT NULL,
    notas BLOB,
    FOREIGN KEY (clavesocio)
    REFERENCES Socio(clavesocio)
		ON DELETE SET NULL
        ON UPDATE CASCADE,
	FOREIGN KEY (claveejemplar)
	REFERENCES Ejemplar(claveejemplar)
		ON DELETE SET NULL
        ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Trata_sobre (
	clavelibro INT NOT NULL,
    clavetema SMALLINT NOT NULL,
    FOREIGN KEY (clavelibro)
    REFERENCES Libro(clavelibro)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	FOREIGN KEY (claveTEMA)
	REFERENCES Tema(clavetema)
		ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Escrito_por (
	clavelibro INT NOT NULL,
	claveautor INT NOT NULL,
	FOREIGN KEY (clavelibro)
	REFERENCES Libro(clavelibro)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (claveautor)
	REFERENCES Autor(claveautor)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE = InnoDB;