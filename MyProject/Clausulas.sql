
-- Clausulas
-- sirven para la manipulacion y ordenamiento de datos


-- Clausula WHERE
-- Sirve para filtar los datos que se devuelven/eliminan/actualizan

SELECT * 
FROM Paciente 
WHERE apellido = 'Perez';

SELECT * 
FROM Paciente
WHERE nombre = 'Claudio'
AND apellido = 'Lopez';


-- CLausula TOP
-- Nos permite seleccionar un limite de registros de una tabla

SELECT TOP 2 * FROM Paciente;
SELECT TOP 2 * FROM Paciente WHERE apellido = 'Perez';

SELECT TOP 1 * FROM Turno ORDER BY fechaTurno DESC;


-- Clausula OREDER BY
-- Trae un conjunto de registros ordenados segun el campo especificado

SELECT * FROM Paciente ORDER BY fechaNacimiento DESC;


-- Clausula DISTINCT
-- Agrupa todos los registros por un campo en particular

SELECT DISTINCT apellido FROM Paciente;
SELECT DISTINCT idPaciente, apellido FROM Paciente;


-- Clausula GROUP BY
-- Funciona igual que el DISTINCT solo que nos permite usar funciones de agregado

SELECT apellido FROM Paciente GROUP BY apellido;