
-- Operadores
-- suma y concatenacion +
-- resta                -
-- division             /
-- multiplicacion       *
-- modulo               %

DECLARE @num1 DECIMAL(9,2);
DECLARE @num2 DECIMAL(9,2);
DECLARE @resultado DECIMAL(9,2);

SET @num1 = 20;
SET @num2 = 30;

DECLARE @varchar1 VARCHAR(10);
DECLARE @varchar2 VARCHAR(10);
DECLARE @resultado2 VARCHAR(20);

SET @varchar1 = 'Hola';
SET @varchar2 = 'mundo!';

SET @resultado = @num1 + @num2;
PRINT @resultado;

SET @resultado = @num1 - @num2;
PRINT @resultado;

SET @resultado = @num1 / @num2;
PRINT @resultado;

SET @resultado = @num1 * @num2;
PRINT @resultado;

SET @resultado = @num1 % @num2;
PRINT @resultado;

SET @resultado2 = @varchar1 + ' ' + @varchar2;
PRINT @resultado2;

-- Operadores de comparacion
--  >  mayor
--  >= mayor o igual
--  <  menor
--  <= menor o igual
--  =  igual
--  <> distinto

IF @num2 > @num1
	PRINT 'Si';

IF @num1 < @num2
	PRINT 'Si';

IF @num2 >= @num1
	PRINT 'Si';

IF @num1 <= @num2
	PRINT 'Si';

IF @num2 = @num1
	PRINT 'No';

IF @num1 <> @num2
	PRINT 'Si';

DECLARE @txt1 VARCHAR(50) = 'Hola me llamo';
DECLARE @txt2 VARCHAR(50) = 'Hola me llamo Agus';

IF @txt1 > @txt2
	PRINT 'txt1 > txt2';

IF @txt1 < @txt2
	PRINT 'txt1 < txt2';

IF @txt1 = @txt2
	PRINT 'No';

IF @txt1 <> @txt2
	PRINT 'Si';