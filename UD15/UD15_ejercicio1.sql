USE Directores;
INSERT INTO Despachos(numero,capacidad) VALUES
	(1,20),
    (2,20),
    (3,35),
    (4,20),
    (5,15),
    (6,35),
    (10,50),
    (13,50),
    (14,50),
    (15,10);

INSERT INTO Directores(dni,NomApels,FK_numero_Despachos,FK_dnijefe_Directores) VALUES
	(00555726,"Geralt of Rivia",1,00555726),
    (93350572,"Yennefer of Vengerberg",1,00555726),
    (91514048,"Cirilla",1,00555726),
    (20419264,"Jaskier",1,00555726),
    (60383892,"Frodo Baggins",3,60383892),
    (54295337,"Aragorn",3,54295337),
	(89210801,"Éowyn",10,89210801),
    (30816306,"Faramir",10,89210801),
    (15544305,"Samsagaz Gamyi",3,60383892),
    (27490092,"Gollum",15,54295337);
    







