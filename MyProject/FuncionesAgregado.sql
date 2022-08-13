-- Funciones de agregado

-- MAX y MIN
SELECT MAX(idPaciente) FROM Paciente;
SELECT MIN(idPaciente) FROM Paciente;

SELECT apellido, MAX(idPaciente) FROM Paciente GROUP BY apellido;
SELECT apellido, MIN(idPaciente) FROM Paciente GROUP BY apellido;


-- SUM
SELECT SUM(idPaciente) FROM Paciente;
SELECT SUM(idPaciente), apellido FROM Paciente GROUP BY apellido;


-- AVG: calcula un promedio de un total de registros
SELECT AVG(idPaciente) FROM Paciente;


-- COUNT 
SELECT COUNT(*) FROM Paciente;
SELECT COUNT(idPaciente) FROM Paciente;
SELECT COUNT(idPaciente) FROM Paciente WHERE apellido = 'Perez';

-- HAVING
SELECT estado FROM Turno GROUP BY estado HAVING COUNT(estado) = 2;