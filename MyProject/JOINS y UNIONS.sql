-- JOINS y UNIONS
-- Data de como conectar dos o mas tablas entre si y obtener resultados

-- INNER JOIN
-- Nos permite cruzar tablas por campos que tengan en comun para obtener un resultado que onvolucre ambas tablas

-- USE CentroMedico;
-- SELECT * FROM Paciente;
-- SELECT * FROM Turno;
GO
	SELECT * 
	FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
GO


-- LEFT JOIN
-- Nos permite obtener los registros de la tabla de la izquierda (primera en el select) y solamente los que estan 
-- en la tabla de la derecha que conincidan con la clausula ON

GO
	SELECT * 
	FROM Paciente P
	LEFT JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
GO


-- RIGHT JOIN
-- Nos permite obtener los registros de la tabla de la izquierda (primera en el select) y solamente los que estan 
-- en la tabla de la derecha que conincidan con la clausula ON

GO
	SELECT * 
	FROM Paciente P
	RIGHT JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
GO


-- Clausula UNION
-- Nos permite unir dos resultados de dos consultas diferentes, elimina repeticiones

GO
	SELECT * FROM Turno WHERE estado = 0
	UNION
	SELECT * FROM Turno WHERE estado = 1
GO


-- UNION ALL 
-- Nos permite unir dos resultados de dos consultas diferentes, no elimina repeticiones

GO
	SELECT * FROM Turno
	UNION ALL
	SELECT * FROM Turno
GO