/* 3.1 */
SELECT * 
FROM actividades.almacenes;

/* 3.2 */
SELECT * 
FROM actividades.cajas
WHERE VALOR > 150;

/* 3.3 */
SELECT CONTENIDO
FROM actividades.cajas
GROUP BY CONTENIDO;

/* 3.4 */
SELECT AVG(valor)
FROM actividades.cajas;

/* 3.5 */
SELECT AVG(valor), ALMACEN
FROM actividades.cajas
GROUP BY ALMACEN;

/* 3.6 */
SELECT *
FROM (
	SELECT AVG(valor) AS MEDIA, ALMACEN
	FROM actividades.cajas
	GROUP BY ALMACEN) AS TABLA_MEDIA
WHERE MEDIA > 150;

/* 3.7 */
SELECT NUMREFERENCIA, LUGAR
FROM actividades.cajas
	FULL JOIN almacenes ON ALMACEN = almacenes.CODIGO;

/* 3.8 */
SELECT COUNT(NUMREFERENCIA), ALMACEN
FROM actividades.cajas
GROUP BY ALMACEN;

/* 3.9 */
SELECT *
FROM (SELECT COUNT(NUMREFERENCIA) AS CANTIDAD, ALMACEN, CAPACIDAD
	FROM actividades.cajas
		FULL JOIN almacenes ON ALMACEN = almacenes.CODIGO
	GROUP BY ALMACEN) AS TABLAINTERMEDIA
WHERE CANTIDAD > CAPACIDAD;

/* 3.10 */
SELECT NUMREFERENCIA,LUGAR
FROM actividades.cajas
	FULL JOIN almacenes ON ALMACEN = almacenes.CODIGO
WHERE LUGAR LIKE 'Bilbao';

/* 3.11 */
INSERT INTO actividades.almacenes(LUGAR,CAPACIDAD) VALUES ("Barcelona",3);

/* 3.12 */
INSERT INTO actividades.cajas(NUMREFERENCIA,CONTENIDO,VALOR,ALMACEN) VALUES ('H5RT','Papel',200,2);

/* 3.13 */
SELECT NUMREFERENCIA,CONTENIDO,VALOR*0.85 AS ValorRebajado
FROM actividades.cajas;

/* 3.14 */
SELECT NUMREFERENCIA, CONTENIDO, VALOR*0.80 AS ValorRebajado
FROM 
	(SELECT AVG(VALOR) AS ValorMedio
	FROM actividades.cajas
    ) AS TablaMedia,
    (SELECT *
    FROM actividades.cajas
    ) AS TablaValor
WHERE TablaValor.VALOR > TablaMedia.ValorMedio;

/* 3.15 */
DELETE FROM actividades.cajas
WHERE VALOR < 100;


/* 3.16 */
DELETE FROM actividades.cajas WHERE EXISTS 
	(SELECT *
	FROM (SELECT COUNT(NUMREFERENCIA) AS CANTIDAD, ALMACEN, CAPACIDAD
			FROM actividades.cajas
				FULL JOIN almacenes ON ALMACEN = almacenes.CODIGO
			GROUP BY ALMACEN) AS TABLAINTERMEDIA
	WHERE CANTIDAD > CAPACIDAD);