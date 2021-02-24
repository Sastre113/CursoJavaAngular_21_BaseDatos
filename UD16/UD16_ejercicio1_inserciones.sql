INSERT INTO actividades.fabricantes(NOMBRE) VALUES
	('NVIDIA'),
	('AMD'),
    ('INTEL'),
    ('ASUS'),
    ('MSI'),
    ('GIGABYTE'),
    ('CORSAIR'),
    ('ACER'),
    ('NOX'),
    ('RAZER');

SELECT * FROM actividades.fabricantes;

/* Inserción de prueba */
INSERT INTO actividades.articulos(NOMBRE,PRECIO,FABRICANTE) VALUES
	('RTX 2060',375,7);
    
INSERT INTO actividades.articulos(NOMBRE,PRECIO,FABRICANTE) VALUES
	('RTX 2070',600,7),
    ('RX 480',300,8),
    ('VOX URANO',65,15),
    ('ROG POWER',180,10),
    ('K68',150,13),
    ('KRAKEN',80,16),
    ('SWIFT 6',457,14),
    ('DISIPADOR',45,12),
    ('RTX 3080',900,7);

SELECT * FROM actividades.articulos;

