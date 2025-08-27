USE clases;
SELECT * FROM estudiantes;

-- SELECCIONAR UNA COLUMNA ES ESPECIFICO
SELECT 
	nombre_estudiante,
    telefono
FROM estudiantes;

-- SELECCIONAR ALGO EN ESPECIAL
SELECT * FROM estudiantes WHERE nombre_estudiante = 'Ana Pérez'; 

-- BUSCAR POR FECHA ESPECIFICA
SELECT * FROM materias WHERE hora  = '2025-08-26';

-- ORDERNAR 
SELECT * FROM estudiantes ORDER BY   nombre_estudiante DESC;

-- IMPRIMIR UN LIMITE
SELECT * FROM estudiantes LIMIT 10;

-- buscar considencia
SELECT * FROM estudiantes WHERE nombre_estudiante LIKE '%a%';

-- BUSCAR POR APELLIDO
SELECT * FROM estudiantes WHERE nombre_estudiante LIKE '%Romero';

-- BUSCAR TOTAL DE TUTORIAS
SELECT COUNT(*) FROM tutores;

-- AGRUPAR POR TIPO E MATERIA
SELECT COUNT(*) FROM materias GROUP BY tipo_de_materia;
