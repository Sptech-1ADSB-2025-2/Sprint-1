CREATE DATABASE neoguard;
USE neoguard;

CREATE TABLE hospital (
	id INT PRIMARY KEY AUTO_INCREMENT,
	cnpj VARCHAR(50) NOT NULL UNIQUE,
	nome VARCHAR(50) NOT NULL,
	telefone VARCHAR(20),
	email VARCHAR(50) NOT NULL
);

 CREATE TABLE loginHospital (
	id INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(50) NOT NULL,
	senha varchar(20) NOT NULL,
	telefone VARCHAR(12) NOT NULL
);
 

CREATE TABLE temperatura (
	id INT PRIMARY KEY AUTO_INCREMENT,
	idIncubadora INT NOT NULL,
    temperatura DECIMAL NOT NULL,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT temperatura AS Temperatura, CASE
	WHEN temperatura < 32 THEN "Hipotermia grave"
	WHEN temperatura < 35.9 THEN "Hipotermia moderada"
    WHEN temperatura < 36.4 THEN "Hipotermia leve"
	WHEN temperatura > 37.5 THEN 'Hipetermia'
    ELSE "Temperatura normal"
END AS Situação,
dataHora AS "Data e hora" FROM temperatura WHERE idIncubadora = 1;