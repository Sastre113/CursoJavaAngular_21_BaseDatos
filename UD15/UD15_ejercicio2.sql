USE PiezasProveedores;
INSERT INTO Piezas(codigo,nombre) VALUES
	(79033066,"Llave inglesa"),
    (10284470,"Llave española"),
    (83225367,"Pico de oro"),
    (38444048,"Tornillo"),
    (40219395,"Escuadra"),
    (63773951,"Tuerca"),
    (79260594,"Arandela"),
    (59519298,"Goma"),
    (09639281,"Remache"),
    (95752090,"Punta");
    
INSERT INTO Proveedores(id,nombre) VALUES
	('1',"FerreteriaPaco"),
    ('2',"MordorSA"),
    ('3',"LibertadOrca"),
    ('4',"Free The Shire"),
    ('5',"Tus Piezas"),
    ('6',"PiezasComponentes"),
    ('7',"Gandalf El Gris SA"),
    ('8',"Saruman el Blanco piezas"),
    ('9',"PiezasSimples"),
    ('10',"PiezasCompuestas");
    
INSERT INTO Suministra(precio,FK_codigo_Piezas,FK_id_Proveedores) VALUES
	(10,79033066,'1'),
    (25,10284470,'4'),
    (15,79033066,'5'),
    (5.75,38444048,'10'),
    (7,38444048,'3'),
    (12,40219395,'2'),
    (25,09639281,'7'),
    (3,09639281,'9'),
    (5,63773951,'4'),
    (1,95752090,'4');



