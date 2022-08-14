-- Sentencias SQL

-- Sentencia CREATE
-- Sirve para crear objetos de la base de datos

CREATE TYPE pais FROM CHAR(3);

GO
	CREATE FUNCTION multiplicarPor5 (@var INT)
	RETURNS INT
	AS
	BEGIN
		SET @var = @var * 5;
		RETURN @var;
	END	
GO

SELECT dbo.multiplicarPor5(5);


-- Sentencia ALTER
-- Nos permite modificar un objeto ya creado en el modelo

SELECT * FROM Paciente;

ALTER TABLE Paciente
ADD Estado SMALLINT;

ALTER TABLE Paciente
ALTER COLUMN Estado BIT;

ALTER TABLE Paciente
DROP COLUMN Estado;


-- Sentencia DROP
-- Nos permite eliminar una tabla por completo de la base de datos o una base de datos

CREATE TABLE Tabla(campo1 INT, campo2 INT);
DROP TABLE Tabla;


-- Sentencia TRUNCATE
-- Nos permite eliminar por completo los registros de una tabla y resetea los campos IDENTITY

CREATE TABLE Tabla(campo1 INT IDENTITY, campo2 INT, campo3 INT);
INSERT INTO Tabla(campo2, campo3) VALUES(1,2);
INSERT INTO Tabla(campo2, campo3) VALUES(3,4);
INSERT INTO Tabla(campo2, campo3) VALUES(5,6);
INSERT INTO Tabla(campo2, campo3) VALUES(7,8);
INSERT INTO Tabla(campo2, campo3) VALUES(9,10);
SELECT * FROM Tabla;

TRUNCATE TABLE Tabla;