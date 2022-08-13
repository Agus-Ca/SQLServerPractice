-- SELECT * FROM Paciente;

CREATE PROCEDURE SP_ALTA_Paciente(
								@dni VARCHAR(20),
								@nombre VARCHAR(50),
								@apellido VARCHAR(50),
								@fechaNacimiento VARCHAR(8),
								@domicilio VARCHAR(50),
								@idPais CHAR(3),
								@telefono VARCHAR(20) = '',
								@email VARCHAR(30),
								@observacion observacion = ''
							)
AS

IF NOT EXISTS(SELECT * FROM Paciente WHERE dni = @dni)
	BEGIN
		INSERT INTO Paciente(dni, nombre, apellido, fechaNacimiento, domicilio, idPais, telefono, email, observacion)
		VALUES(@dni, @nombre, @apellido, @fechaNacimiento, @domicilio, @idPais, @telefono, @email, @observacion);

		PRINT 'Paciente agregado correctamente';
		RETURN;
	END
ELSE
	BEGIN
		PRINT 'El paciente ya existe';
	END

-- Pruebas
EXEC SP_ALTA_Paciente '40372889', 'Agustin', 'Casado', '19970530', 'Martin Palero 24, CdMdz', 
					  'ARG', '2616542897', 'agu.e.casado@gmail.com', ''