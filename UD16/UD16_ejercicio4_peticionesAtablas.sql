/* 4.1 */
SELECT NOMBRE 
FROM actividades.peliculas;

/* 4.2 */
SELECT CALIFICACIONEDAD 
FROM actividades.peliculas
GROUP BY CALIFICACIONEDAD;

/* 4.3 */
SELECT DISTINCT CALIFICACIONEDAD 
FROM actividades.peliculas
WHERE CALIFICACIONEDAD IS NULL;

/* 4.4 */
SELECT *
FROM actividades.salas
WHERE PELICULA IS NULL;

/* 4.5 */
SELECT *
FROM actividades.salas
	LEFT JOIN peliculas ON PELICULA = peliculas.CODIGO;
    
/* 4.6 */
SELECT *
FROM actividades.peliculas
	LEFT JOIN salas ON peliculas.CODIGO = salas.PELICULA;

/* 4.7 */
SELECT *
FROM actividades.peliculas
	LEFT JOIN salas ON peliculas.CODIGO = salas.PELICULA
WHERE salas.PELICULA IS NULL;

/* 4.8 */
INSERT INTO actividades.peliculas(NOMBRE,CALIFICACIONEDAD) VALUES ("Uno, Dos, Tres",7);

/* 4.9 */
UPDATE peliculas
SET CALIFICACIONEDAD = 13
WHERE CALIFICACIONEDAD IS NULL;

/* 4.10 */ /* Voy a considerar que menos o igual que 7 es ATP*/
DELETE FROM actividades.salas
WHERE salas.PELICULA IN (SELECT * FROM (SELECT PELICULA
		FROM actividades.salas
			LEFT JOIN peliculas ON PELICULA = peliculas.CODIGO
		WHERE CALIFICACIONEDAD <= 7)AS TABLAX ) ;
      



