
-- Condicional IF
-- Evaluamos el valor de una variable o el resultado de una consulta y ejecutamos acciones

DECLARE @idPaciente INT;
DECLARE @idTurno INT
SET @idPaciente = 7;
IF @idPaciente = 7
	BEGIN
		SET @idTurno = 20;
		SELECT * FROM Paciente WHERE idPaciente = @idPaciente;
		PRINT @idTurno;
	END
ELSE
	BEGIN
		PRINT 'No se cumplio la condicion';
	END

-- Funcion EXISTS
-- Nos permite evaluar si existe un grupo de registros de determiada consulta

IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = 2)
	PRINT 'Existe';

-- Estructura WHILE
-- Permite ejecutar un bloque de codigo hasta que se cumpla una condicion

DECLARE @contador int = 0;
WHILE @contador <=10
	BEGIN
		PRINT @contador;
		SET @contador = @contador + 1;
	END

-- Condicional CASE
-- Permit tomar desiciones en funcion del valor de una variable o un campo

DECLARE @valor INT;
DECLARE @resultado CHAR(10) = '';
SET @valor = 20;

SET @resultado = (CASE 
					WHEN @valor = 10 THEN 'ROJO'
					WHEN @valor = 20 THEN 'VERDE'
					WHEN @valor = 30 THEN 'AZUL'
				  END);

PRINT @resultado;


SELECT *,(CASE WHEN estado = 1 THEN 'VERDE'
			   WHEN estado = 2 THEN 'ROJO'
			   WHEN estado = 3 THEN 'AZUL'
			   ELSE 'GRIS'
		  END) AS colorTurno
FROM Turno;

-- Instruccion RETURN
-- Nos permite salir forzosamente de un script y las sentencias posteriores no se ejecutaran

DECLARE @contador INT = 0;
WHILE @contador <=10
	BEGIN
		PRINT @contador;
		SET @contador = @contador + 1;
		IF @contador = 3
			RETURN;
	END

-- Instruccion BREAK
-- Sale del bucle antes de que termine, pero sigue ejecutando instrucciones posteriores

DECLARE @contador INT = 0;
WHILE @contador <=10
	BEGIN
		PRINT @contador;
		SET @contador = @contador + 1;
		IF @contador = 3
			BREAK;
	END
PRINT 'Sigue ejecutando';

-- Estructura TRY-CATCH
-- Nos permite manejar errores en tiempo de ejecucion

DECLARE @contador INT;

BEGIN TRY
	SET @contador = 'texto';
END TRY 
BEGIN CATCH
	PRINT 'No es posible asignar un texto a la variable';
END CATCH