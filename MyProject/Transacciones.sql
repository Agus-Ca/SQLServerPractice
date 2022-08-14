-- Transacciones

-- Nos permite ejecutar un bloque de codigo, validarla y si se realizan los procesos deseados se hara la transaccion
-- o caso contrario se hara un rollback.

-- Se utiliza para evaluar una porcion de codigo en la que estamos actualizando o borrando datos.

SELECT * FROM Paciente;

GO
	BEGIN TRANSACTION
		UPDATE Paciente SET telefono = 2616666666 WHERE idPaciente = 1;
		IF @@ROWCOUNT = 1
			COMMIT TRANSACTION;
		ELSE
			ROLLBACK
GO


SELECT * FROM Turno;

GO
	BEGIN TRANSACTION
		DELETE FROM Turno WHERE estado = 0;
		IF @@ROWCOUNT = 1
			COMMIT TRANSACTION
		ELSE
			ROLLBACK TRANSACTION
GO