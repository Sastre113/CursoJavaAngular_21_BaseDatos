USE actividades;
INSERT INTO departamentos(codigo,nombre,presupuesto) VALUES
	(1,"Black Mesa", 76000),
    (2,"Aperture Science", 150000),
	(3,"Wasterlands", 25000),
	(4,"Screw",50000),
    (5,"Nostromos",250000),
    (6,"UNSC", 500000),
    (7,"PELICAN", 12000),
    (8,"MJOLNIR",50000),
    (9,"ANDURIL",75000),
    (10,"FROSTMOURE",50000);

INSERT INTO empleados(dni,nombre,apellidos,departamento) VALUES
	('79033066',"Gordon", "Freeman",1),
    ('10284470',"G","Man",1),
    ('83225367',"Albert","Einstein",6),
    ('38444048',"Isaac","Newton",5),
    ('40219395',"Stephen","Hawking",8),
    ('63773951',"Marie", "Curie",3),
    ('79260594',"Charles","Darwin",2),
    ('59519298',"Louis", "Pasteur ",9),
    ('09639281',"Gregor", "Mendel ",10),
    ('95752090',"Arquímedes", "de Siracusa",7);
    