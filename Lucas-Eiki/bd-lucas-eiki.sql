CREATE DATABASE neoguard;
USE neoguard;

CREATE TABLE hospital (
	id INT PRIMARY KEY AUTO_INCREMENT,
	cnpj VARCHAR(14) NOT NULL UNIQUE,
	nome VARCHAR(50) NOT NULL,
	cep VARCHAR(100) NOT NULL,
    endereco VARCHAR(256),
	dataContratacao DATE NOT NULL,
	telefone VARCHAR(20),
	email VARCHAR(50) NOT NULL,
	nomeRepresentante VARCHAR(80),
	plano VARCHAR(7),
    CONSTRAINT chkPlano 
		CHECK(plano IN ('ativo', 'inativo'))
);

 CREATE TABLE loginHospital (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idHospital INT,
	email VARCHAR(50) NOT NULL,
	senha varchar(20) NOT NULL,
	telefone VARCHAR(20)
);
 
 CREATE TABLE incubadora (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idHospital INT NOT NULL,
    numeroIncubadora INT NOT NULL,
	numeroSala INT DEFAULT 1
);

CREATE TABLE temperatura (
	id INT PRIMARY KEY AUTO_INCREMENT,
	idIncubadora INT NOT NULL,
    temperatura DECIMAL(3,1) NOT NULL,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT temperatura AS Temperatura, CASE
	WHEN temperatura > 37.5 THEN Hipetermia
	WHEN temperatura < 36.4 THEN "Hipotermia leve"
    WHEN temperatura < 35.9 THEN "Hipotermia moderada"
    WHEN temperatura < 32 THEN "Hipotermia grave"
    ELSE "Temperatura normal"
END AS Situação,
dataHora AS "Data e hora" FROM temperatura WHERE idIncubadora = 1;