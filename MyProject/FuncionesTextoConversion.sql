-- Funciones de conversion y de texto

-- Funcion LEFT y funcion RIGHT
-- Sirven para tratas variables de tipo char o varchar
-- y nos permiten obtener determinados caracteres de la cadena de caracteres a la izquierda o a la derecha
-- las funciones reciben dos parametros, la variable de la que se obtendran los caracteres y la cantidad de caracteres que se quieren obtener

GO
	DECLARE @var1 VARCHAR(20);
	SET @var1 = 'Agustin';

	PRINT LEFT(@var1, 3);
	PRINT RIGHT(@var1, 2);
GO


-- Funcion LEN
-- Cuenta la cantidad de caracteres de una variable de tipo CHAR o VARCHAR

GO
	DECLARE @var1 VARCHAR(20);
	SET @var1 = 'Agustin';

	PRINT LEN(@var1);
GO


-- Funciones LOWER y UPPER
-- Nos permiten formatear variables de tipo texto o campos de una tabla
-- LOWER => convierte el parametro a minusculas
-- UPPER => convierte el parametro a mayusculas

GO
	DECLARE @var1 VARCHAR(20);
	SET @var1 = 'Agustin';

	PRINT LOWER(@var1);
	PRINT UPPER(@var1);

	PRINT UPPER(LEFT(@var1), 1) + LOWER(RIGHT(@var1, LEN(@var1)-1))
GO


-- Funcion REPLACE
-- Nos permite reemplazar un caracter por otro en una variable de tipo STRING o en el campo de una tabla
-- Parametros: (cadena en la cual se reemplazara, caracter que se reemplazara, caracter por el se reemplazara)

GO
	DECLARE @var1 VARCHAR(20);
	SET @var1 = 'Agu5tin';

	SELECT REPLACE(@var1, '5', 's');

	PRINT @var1;
GO


-- Funcion REPLICATE
-- Nos permite repetir un caracter o una cadena de caracteres la cantidad de veces que deseemos
-- Parametro (strig/caracter a repetir, cantidad de veces que queremos repetirlo)

GO
	PRINT REPLICATE('0', 5);
GO


-- Funciones LTRIM y RTRIM
-- Nos permiten eliminar espacios a la izquierda/derecha en una cadera de caracteres

GO
	DECLARE @var1 VARCHAR(20);
	DECLARE @var2 VARCHAR(20);
	SET @var1 = '     Agustin';
	SET @var2 = 'Agustin     ';

	PRINT @var1;
	PRINT LTRIM(@var1);
	PRINT @var2;
	PRINT RTRIM(@var2);
GO


-- Funcion CONCAT
-- Nos permite concatenar cadenas de texto (2 o mas)

GO
	DECLARE @var1 VARCHAR(20);
	DECLARE @var2 VARCHAR(20);
	DECLARE @var3 VARCHAR(20);
	DECLARE @var4 VARCHAR(20);
	DECLARE @unEspacio CHAR(1);
	SET @var1 = 'Agustin';
	SET @var2 = 'Eduardo';
	SET @var3 = 'Casado';
	SET @var4 = 'Ciafrelli';
	SET @unEspacio = ' ';

	SELECT CONCAT(@var1, @unEspacio, @var2, @unEspacio, @var3, @unEspacio, @var4);
GO


-- Funciones GETDATE y GETUTCDATE
-- Se utilizan para almacenar en una tabla en un campo fecha la fecha y hora en que un registro ha sido creado
-- GETDATE devulve la hora dependiendo de donde esta localizado el servidor
-- GETDATEUTC devuelve la hora en el meridiano de greenwich

GO
	SELECT GETDATE();
	SELECT GETUTCDATE();
GO


-- Funcion DATEADD
-- Nos permite agregarle a una fecha intervalos
-- Parametros: (unidad de tiempo a agregar {year month day hour minute second dayweek}, cantidad a agregar, fecha a la que se le agregara)

GO
	SELECT DATEADD(DAY, 2, GETDATE());
	SELECT DATEADD(DAY, -2, GETDATE());
GO


-- Funcion DATEDIF
-- Nos devuelve la diferencia entre dos fechas especificadas
-- Parametros (unidad de tiempo a diferenciar, fecha, fecha con la cual queremos realizar la diferencia)

GO
	SELECT DATEDIFF(YEAR, GETDATE(), '20170101');
GO

-- Funcion DATEPART
-- Nos permite obtener un intervalo especifico d euna fecha

GO
	SELECT DATEPART(MONTH, GETDATE());
GO


-- Funcion ISDATE
-- Devuelve true o false dependiendo si una fecha especificada es valida

GO
	SELECT ISDATE(GETDATE());
	SELECT ISDATE('asdfasdfasdf');
	SELECT ISDATE('20190132');
	SELECT ISDATE('20190131');
GO

-- Funcion CAST y CONVERT
-- CAST: es una fn generica que permite convertir tipos de datos comunes (numeros caracteres, etc)
-- CONVERT: tiene algunos parametros que nos permiten convertir con mayor detalle un tipo de dato

GO
	DECLARE @num MONEY;
	SET @num = 500.40;
	SELECT CAST(@num AS INT) numeroInt;

	SELECT CAST(idPaciente AS MONEY) idToMoney FROM Paciente;
GO
GO
	DECLARE @num MONEY;
	SET @num = 500.40;

	PRINT CONVERT(INT, @num);

	DECLARE @fecha AS DATETIME;
	SET @fecha = GETDATE();
	PRINT @fecha;

	PRINT CONVERT(CHAR(20), @fecha, 104);
GO