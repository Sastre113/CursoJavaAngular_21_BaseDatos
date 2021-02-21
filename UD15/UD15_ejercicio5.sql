USE LosInvestigadores;
INSERT INTO Facultad(codigo,nombre) VALUES
	(1,"Facultad 1"),
    (2,"Facultad 2"),
    (3,"Facultad 3"),
    (4,"Facultad 4"),
    (5,"Facultad 5"),
    (6,"Facultad 6"),
    (7,"Facultad 7"),
    (8,"Facultad 8"),
    (9,"Facultad 9"),
    (10,"Facultad 10");


INSERT INTO Investigadores(dni, nomapels,FK_codigo_Investigadores_Facultad) VALUES
	('79033066',"Gordon Freeman",1),
    ('10284470',"G-Man",2),
    ('83225367',"Albert Einstein",3),
    ('38444048',"Isaac Newton",4),
    ('40219395',"Stephen Hawking",5),
    ('63773951',"Marie Curie",6),
    ('79260594',"Charles Darwin",7),
    ('59519298',"Louis Pasteur ",8),
    ('09639281',"Gregor Mendel ",9),
    ('95752090',"Arquímedes de Siracusa",10);

INSERT INTO Equipos(numserie,nombre,FK_codigo_Equipos_Facultad) VALUES
	('100',"Team 1",1),
    ('200',"Team 2",2),
    ('300',"Team 3",3),
    ('400',"Team 4",4),
    ('500',"Team 5",5),
    ('600',"Team 6",6),
    ('700',"Team 7",7),
    ('800',"Team 8",8),
    ('900',"Team 9",9),
    ('1000',"Team 10",10);
    

INSERT INTO Reserva(FK_dni_Investigadores,FK_numserie_Equipos, comienzo, fin) VALUES
	('79033066', '100', "2001-01-1","2001-03-30"),
   	('10284470', '200',"2002-01-1","2002-03-30"),	
    ('83225367', '300',"2003-01-1","2003-03-30"),
	('38444048', '400',"2004-01-1","2004-03-30"),
	('40219395', '500',"2005-01-1","2005-03-30"),
	('63773951', '600',"2006-01-1","2006-03-30"),
	('79260594', '700',"2007-01-1","2007-03-30"),
	('59519298', '800',"2008-01-1","2008-03-30"),
	('09639281', '900',"2009-01-1","2009-03-30"),
	('95752090', '1000',"2010-01-1","2010-03-30");