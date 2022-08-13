
-- Inserts en la tabla TurnoEstado

INSERT INTO TurnoEstado VALUES(0, 'Pendiente');
INSERT INTO TurnoEstado VALUES(1, 'Realizado');
INSERT INTO TurnoEstado VALUES(2, 'Cancelado');

-- Inserts en la tabla Turno

INSERT INTO Turno VALUES ( '20200302 13:00', 0 , '' );
INSERT INTO Turno VALUES ( '20200303 14:00', 0 , '');
INSERT INTO Turno VALUES ( '20200303 15:30', 1 , 'El paciente ha sido atendido' );
INSERT INTO Turno VALUES ( '20200305 18:00', 2 , 'El paciente llamó para cancelar el turno' );