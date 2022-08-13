
-- Creacion de tablas

CREATE TABLE  Paciente(
	idPaciente paciente NOT NULL IDENTITY(1,1),
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NULL,
	fechaNaciemiento DATE NULL,
	domicilio VARCHAR(50),
	idPais CHAR(3) NULL,
	telefono VARCHAR(20) NULL,
	email VARCHAR(30) NULL,
	observacion observacion NULL,
	fechaAlta DATETIME NOT NULL,

	CONSTRAINT PK_Paciente PRIMARY KEY (idPaciente)
);

CREATE TABLE Historia(
	idHistoria historia NOT NULL IDENTITY(1,1),
	fechaHistoria DATETIME NOT NULL,
	observacion observacion NOT NULL,

	CONSTRAINT PK_Historia PRIMARY KEY (idHistoria)
);

CREATE TABLE HistoriaPaciente(
	idHistoria INT NOT NULL,
	idPaciente INT NOT NULL,
	idMedico INT NOT NULL,

	PRIMARY KEY (idHistoria, idPaciente, idMedico)
);

CREATE TABLE Turno(
	idTurno turno NOT NULL IDENTITY,
	fechaTurno DATETIME NULL,
	estado SMALLINT NULL,
	observacion observacion NULL,

	CONSTRAINT PK_Turno PRIMARY KEY (idTurno)
);

CREATE TABLE TurnoPaciente(
	idTurno INT NOT NULL,
	idPaciente INT NOT NULL,
	idMedico INT NOT NULL,

	PRIMARY KEY (idTurno, idPaciente, idMedico)
);

CREATE TABLE Especialidad(
	idEspecialidad INT NOT NULL IDENTITY,
	especialidad VARCHAR(30),

	CONSTRAINT PK_Especialidad PRIMARY KEY (idEspecialidad)
);

CREATE TABLE Pais(
	idPais CHAR(3) NOT NULL,
	pais VARCHAR(30) NULL,

	CONSTRAINT PK_Pais PRIMARY KEY (idPais)
);

CREATE TABLE Medico(
	idMedico medico NOT NULL IDENTITY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,

	CONSTRAINT PK_Medico PRIMARY KEY (idMedico)
);

CREATE TABLE MedicoEspecialidad(
	idMedico INT NOT NULL,
	idEspecialidad INT NOT NULL,
	descripcion VARCHAR(50) NULL,
 CONSTRAINT PK_MedicoEspecialidad PRIMARY KEY (idMedico)
);

CREATE TABLE Pago(
	idPago INT NOT NULL IDENTITY PRIMARY KEY,
	concepto TINYINT NOT NULL,
	fecha DATETIME NOT NULL,
	monto money NOT NULL,
	estado TINYINT NOT NULL,
	observacion observacion NULL
);

CREATE TABLE PagoPaciente(
	idPago INT NOT NULL,
	idPaciente INT NOT NULL,
	idTurno INT NOT NULL,

	CONSTRAINT PK_PagoPaciente PRIMARY KEY(idPago, idPaciente, idTurno)
);

CREATE TABLE Concepto(
	idConcepto TINYINT NOT NULL IDENTITY PRIMARY KEY,
	descripcion VARCHAR(100)
);