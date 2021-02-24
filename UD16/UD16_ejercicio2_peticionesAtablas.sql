/* 2.1 */
SELECT apellidos 
FROM actividades.empleados;

/* 2.2 */
SELECT DISTINCT apellidos 
FROM actividades.empleados;

/* 2.3 */
SELECT * 
FROM actividades.empleados
WHERE apellidos = 'Lopez';

/* 2.4 */
SELECT * 
FROM actividades.empleados
WHERE apellidos = 'Lopez' OR apellidos = 'Pérez';

/* 2.5 */
SELECT * 
FROM actividades.empleados
WHERE departamento = 14;

/* 2.6 */
SELECT * 
FROM actividades.empleados
WHERE departamento = 37 OR departamento = 77;

/* 2.7 */
SELECT * 
FROM actividades.empleados
WHERE apellidos LIKE 'P%';

/* 2.8 */
SELECT SUM(presupuesto)
FROM actividades.departamentos;

/* 2.9 */
SELECT 
	departamento,COUNT(DNI)
FROM actividades.empleados
	FULL JOIN departamentos ON departamento = departamentos.codigo
GROUP BY
	departamento;

/* 2.10 */
SELECT 
	*
FROM actividades.empleados
	LEFT JOIN departamentos ON departamento = departamentos.codigo;

	
/* 2.11 */
SELECT 
	empleados.nombre, empleados.apellidos, departamentos.NOMBRE, departamentos.PRESUPUESTO
FROM actividades.empleados
	LEFT JOIN departamentos ON departamento = departamentos.codigo;

/* 2.12 */
SELECT *
FROM actividades.empleados
	LEFT JOIN departamentos ON departamento = departamentos.codigo
WHERE presupuesto > 60000;

/* 2.13 */
SELECT *
FROM (SELECT AVG(PRESUPUESTO) AS PresupuestoAVG
	FROM actividades.departamentos
	) AS tablaMedia,
	(SELECT *
    FROM actividades.departamentos
	) AS tablaValor
WHERE tablaValor.PRESUPUESTO > tablaMedia.PresupuestoAVG;

/* 2.14 */
SELECT NOMBRE
FROM (SELECT COUNT(DEPARTAMENTO) AS CantEmpleados, DEPARTAMENTO, departamentos.NOMBRE
	FROM actividades.empleados
		FULL JOIN departamentos ON DEPARTAMENTO = departamentos.CODIGO
	GROUP BY DEPARTAMENTO) AS TablaCantEmpleados
WHERE TablaCantEmpleados.CantEmpleados > 2;


/* 2.15 */
INSERT INTO departamentos(CODIGO,NOMBRE,PRESUPUESTO) 
VALUES (11,"Calidad",40000);

INSERT INTO empleados(DNI,NOMBRE,APELLIDOS,DEPARTAMENTO) 
VALUES ("89267109","Esther","Vázquez",11);


/* 2.16 */
UPDATE departamentos	
SET PRESUPUESTO = PRESUPUESTO*0.9;

/* 2.17 */
UPDATE actividades.empleados
SET DEPARTAMENTO = 14
WHERE DEPARTAMENTO = 77;

/* 2.18 */
DELETE FROM empleados
WHERE DEPARTAMENTO = 14;

/* 2.19 */ /* Funciona, pero no entiendo el por qué*/
DELETE FROM actividades.empleados 
WHERE EXISTS 
	(SELECT *FROM 
		(SELECT *
		FROM actividades.empleados
			LEFT JOIN ( SELECT CODIGO
				FROM actividades.departamentos
				WHERE PRESUPUESTO > 60000
		) AS tablaCodigo
		ON DEPARTAMENTO = tablaCodigo.CODIGO
		WHERE DEPARTAMENTO = tablaCodigo.CODIGO) as tablaX);

/* 2.20 */
DELETE FROM empleados;
