USE GrandesAlmacenes;
INSERT INTO Cajeros(nomapels) VALUES
	("Geralt of Rivia"),
    ("Yennefer of Vengerberg"),
    ("Cirilla"),
    ("Jaskier"),
    ("Frodo Baggins"),
    ("Aragorn"),
    ("Éowyn"),
    ("Faramir"),
    ("Samsagaz Gamyi"),
    ("Gollum");
    
INSERT INTO Productos(precio,nombre) VALUES
	(79,"Llave inglesa"),
    (10,"Llave española"),
    (83,"Pico de oro"),
    (38,"Tornillo"),
    (40,"Escuadra"),
    (63,"Tuerca"),
    (33,"Arandela"),
    (59,"Goma"),
    (9,"Remache"),
    (95,"Punta");

INSERT INTO Maquinas_registradoras(piso) VALUES
	(1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10);

/* FALLA */
INSERT INTO Venta(FK_codigo_Productos,
	FK_codigo_Cajeros,
	FK_codigo_Maquinas_registradoras) VALUES
    (1,1,1),
    (2,2,2),
    (3,3,3),
    (4,4,4),
    (5,5,5),
    (6,6,6),
    (7,7,7),
    (8,8,8),
    (9,9,9),
    (10,10,10);