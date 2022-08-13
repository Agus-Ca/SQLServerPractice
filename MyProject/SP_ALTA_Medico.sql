-- SELECT * FROM Medico;
-- SELECT * FROM MedicoEspecialidad;

CREATE PROCEDURE SP_ALTA_Medico(
								@nombre VARCHAR(50),
								@apellido VARCHAR(50),
								@idEspecialidad INT,
								@descripcion VARCHAR(50)
							  )
AS
SET NOCOUNT ON

IF NOT EXISTS(SELECT TOP(1) idMedico FROM Medico WHERE nombre = @nombre AND apellido = @apellido)
	BEGIN
		INSERT INTO Medico(nombre, apellido)
		VALUES(@nombre, @apellido);

		DECLARE @idMedico medico;
		SET @idMedico = @@IDENTITY;

		INSERT INTO MedicoEspecialidad(idMedico, idEspecialidad, descripcion)
		VALUES(@idMedico, @idEspecialidad, @descripcion);

		PRINT 'Medico agregado correctamente';
		RETURN;
	END
ELSE
	BEGIN
		PRINT 'El Medico ya existe';
	END

-- Pruebas
--EXECUTE SP_ALTA_Medico 'Gerardo', 'Tassi', 1, 'Medico residente';