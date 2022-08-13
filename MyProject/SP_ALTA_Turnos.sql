-- SELECT * FROM Turno;
-- SELECT * FROM Paciente;
-- SELECT * FROM Medico;
-- SELECT * FROM TurnoPaciente;

CREATE PROCEDURE SP_ALTA_Turno(
								@fechaHora VARCHAR(14), -- formato: YYYYMMDD HH:MM
								@idPaciente paciente,
								@idMedico medico,
								@observacion observacion = ''
							  )
AS
SET NOCOUNT ON

--ESTADOS(0 Pendiente, 1 Realizado, 2 Cancelado)

IF NOT EXISTS(SELECT TOP(1) idTurno FROM Turno WHERE fechaTurno = @fechaHora)
	BEGIN
		INSERT INTO Turno(fechaTurno,estado,observacion)
		VALUES(@fechaHora,0,@observacion);

		DECLARE @idTurno turno;
		SET @idTurno = @@IDENTITY;

		INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
		VALUES(@idTurno, @idPaciente, @idMedico);

		PRINT 'Turno agregado correctamente';
		RETURN;
	END
ELSE
	BEGIN
		PRINT 'El turno ya existe';
	END

-- Pruebas

-- EXECUTE SP_ALTA_Turno '20220814 12:02', 1, 2, 'Nada';