/* 1.1 */
SELECT NOMBRE FROM actividades.articulos;

/* 1.2 */
SELECT NOMBRE,PRECIO FROM actividades.articulos;

/* 1.3 */
SELECT NOMBRE FROM actividades.articulos WHERE PRECIO >= 200;

/* 1.4 */
SELECT * FROM actividades.articulos WHERE 60 <= PRECIO AND PRECIO <= 120;
SELECT * FROM actividades.articulos WHERE PRECIO BETWEEN 60 AND 120;

/* 1.5 */
SELECT NOMBRE,PRECIO,PRECIO*166.386 AS PRECIOenPTS   FROM actividades.articulos;

/* 1.6 */
SELECT AVG(PRECIO) FROM actividades.articulos;

/* 1.7 */
SELECT AVG(PRECIO) FROM actividades.articulos WHERE  FABRICANTE= 2;

/* 1.8 */
SELECT COUNT(NOMBRE) FROM actividades.articulos WHERE PRECIO >= 180;

/* 1.9 */
SELECT NOMBRE,PRECIO FROM actividades.articulos 
WHERE PRECIO >= 180 ORDER BY PRECIO DESC;
SELECT NOMBRE,PRECIO FROM actividades.articulos 
WHERE PRECIO >= 180 ORDER BY NOMBRE ASC;

/* 1.10 */
SELECT * FROM actividades.articulos
FULL JOIN fabricantes ON fabricante = fabricantes.codigo;

/* 1.11 */
SELECT 
	articulos.NOMBRE,PRECIO,fabricantes.NOMBRE AS Fabricante 
FROM actividades.articulos
	LEFT JOIN fabricantes ON fabricante = fabricantes.codigo;

/* 1.12 */
SELECT 
	AVG(PRECIO), fabricante
FROM actividades.articulos
	FULL JOIN fabricantes ON fabricante = fabricantes.codigo
GROUP BY
	fabricante;

/* 1.13 */
SELECT 
	AVG(PRECIO) AS PrecioMedio, fabricantes.nombre
FROM actividades.articulos
	FULL JOIN fabricantes ON fabricante = fabricantes.codigo
GROUP BY fabricante;

    
/* 1.14 */
SELECT *
FROM (SELECT AVG(PRECIO) AS PrecioMedio, fabricantes.nombre
		FROM actividades.articulos
			FULL JOIN fabricantes ON fabricante = fabricantes.codigo
		GROUP BY fabricante) AS TablaIntermedia
WHERE PrecioMedio > 150;

/* 1.15 */
SELECT *
FROM actividades.articulos
GROUP BY CODIGO
HAVING precio = (SELECT MIN(precio) FROM actividades.articulos);

/* 1.16 */ /* FALLA */
SELECT MAX(PRECIO), articulos.NOMBRE,fabricantes.CODIGO ,fabricantes.NOMBRE
FROM actividades.articulos
	LEFT JOIN fabricantes ON fabricante = fabricantes.CODIGO
GROUP BY fabricantes.CODIGO; /* falla aqui */


/* 1.17 */
INSERT INTO articulos(NOMBRE,PRECIO,FABRICANTE) VALUES ("Altavoces",70,2);

/* 1.18 */
UPDATE articulos
SET NOMBRE = "Impresora Laser"
WHERE codigo = 8;

/* 1.19 */
UPDATE articulos	
SET PRECIO = PRECIO*0.9;

/* 1.20 */
UPDATE articulos	
SET PRECIO = PRECIO - 10
WHERE PRECIO > 119;






