-- SELECT * FROM Especialidad;

CREATE PROCEDURE SP_ALTA_Especialidad(
										@especialidad VARCHAR(30)
									 )
AS
SET NOCOUNT ON

IF NOT EXISTS(SELECT TOP(1) idEspecialidad FROM Especialidad WHERE especialidad = @especialidad)
	BEGIN
		INSERT INTO Especialidad(especialidad)
		VALUES(@especialidad);

		PRINT 'Especialidad agregada correctamente';
		RETURN
	END
ELSE
	BEGIN
		PRINT 'LA especialidad ya existe';
		RETURN
	END

-- Pruebas
EXECUTE SP_ALTA_Especialidad 'Dermatologia';