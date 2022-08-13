
-- Operadores logicos

-- AND
SELECT * FROM Paciente;
SELECT * FROM Paciente WHERE apellido = 'Perez' AND nombre = 'Roberto' AND idPaciente = 3;


-- OR
SELECT * FROM Paciente;
SELECT * FROM Paciente WHERE apellido = 'Perez' OR nombre = 'Roberto' OR idPaciente = 3;

-- IN
-- Permite filtrar por un grupo de valores preestablecidos
SELECT * FROM Turno;
SELECT * FROM Turno WHERE estado IN(2,3);

SELECT * FROM Paciente WHERE apellido IN('Perez', 'Ramirez', 'Gonzalez');


-- LIKE
-- Opera sobre cadena de caracteres, nos permite filtrar registros de la tabla por alguna cadena predefinida
SELECT * FROM Paciente WHERE nombre LIKE 'rob%';


-- NOT
-- Niega cualquier operador
SELECT * FROM Paciente WHERE nombre NOT LIKE 'rob%';
SELECT * FROM Turno WHERE estado NOT IN(2,3);


-- BETWEEN
-- Permite filtrar registros por un rango (fechas, numeros, textos)
SELECT * FROM Turno;
SELECT * FROM Turno WHERE fechaTurno BETWEEN '20200102' AND '20200304';
SELECT * FROM Turno WHERE estado BETWEEN 1 AND 5;
SELECT * FROM Turno WHERE observacion BETWEEN 'El paciente h' AND 'El paciente i';


-- combinamos
