USE LosCientificos;
INSERT INTO Cientificos(dni,nomapels) VALUES
	('79033066',"Gordon Freeman"),
    ('10284470',"G-Man"),
    ('83225367',"Albert Einstein"),
    ('38444048',"Isaac Newton"),
    ('40219395',"Stephen Hawking"),
    ('63773951',"Marie Curie"),
    ('79260594',"Charles Darwin"),
    ('59519298',"Louis Pasteur "),
    ('09639281',"Gregor Mendel "),
    ('95752090',"Arquímedes de Siracusa");
    
INSERT INTO Proyecto(id,nombre,horas) VALUES
	('1',"Manhattan",5),
    ('2',"Destruir el mundo",10),
    ('3',"Salvar al mundo",20),
    ('4',"Utopia",270),
    ('5',"eCola",300),
    ('6',"Sin Alimentos",30),
    ('7',"Salud mental",50),
    ('8',"Fin de curso",10),
    ('9',"Jangular",20),
    ('10',"Ticket free",10);
    
INSERT INTO Asignado_A(FK_dni_Cientificos,FK_id_Proyecto) VALUES
	('83225367','1'),
    ('10284470','2'),
    ('79033066','3'),
    ('38444048','4'),
    ('40219395','5'),
    ('63773951','6'),
    ('79260594','7'),
    ('59519298','8'),
    ('09639281','9'),
    ('95752090','10');


