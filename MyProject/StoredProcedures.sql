
-- STORED PROCEDURED
-- Es un conjunto de instrucciones SQL que esta almacenado internamente en el server y disponible para ser ejecutado
-- Sirve para generar un proceso de incersion/borrado/actualizacion de registros

CREATE PROCEDURE SP_Paciente (
	@idPaciente INT
)
AS
	SELECT * FROM Paciente WHERE idPaciente = @idPaciente;
GO

-- Asi editamos un SP
ALTER PROCEDURE SP_Paciente (
	@idPaciente INT
)
AS
	--SELECT apellido, nombre, idPais, observacion FROM Paciente WHERE idPaciente = @idPaciente;


	-- creamos una variable
	DECLARE @ordenamiento CHAR(1)
	SET @ordenamiento = 'A'

	-- las variables se inicializan con null
	DECLARE @valorNull CHAR(1)

	-- con ISNULL podemos reemplazar el valor de algo que tenga null por algo que definamos
	DECLARE @valor CHAR(1)
	SET @valor = ISNULL(@valorNull, 'A')

	PRINT @valor

	
	-- SUBQUERY
	SELECT apellido, nombre, idPais, observacion,
		(SELECT pais.pais FROM Pais pais WHERE pais.idPais = paciente.idPais) paisNombre
	FROM Paciente paciente WHERE idPaciente = @idPaciente;
GO

-- Asi se ejecuta un SP
EXEC SP_Paciente 3;