CREATE DATABASE neoguard;
USE neoguard;

CREATE TABLE login (
	idUser INT PRIMARY KEY AUTO_INCREMENT,
	usuario VARCHAR(40) NOT NULL UNIQUE,
    senha VARCHAR(25) NOT NULL,
    ativo CHAR(1),
    CONSTRAINT chkAtivo CHECK (ativo in('sim', 'não'))
);

CREATE TABLE clientes (
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
	empresa VARCHAR(30) NOT NULL,
    representante VARCHAR(45),
    cnpj VARCHAR(18) NOT NULL,
    dataAdmissao DATETIME DEFAULT CURRENT_TIMESTAMP
);

 CREATE TABLE incubadora (
	id INT PRIMARY KEY AUTO_INCREMENT,
    numeroIncubadora INT NOT NULL,
	nomeSala INT
);

CREATE TABLE temperatura(
	idTemperatura INT PRIMARY KEY AUTO_INCREMENT,
    temperatura DECIMAL(2,1) NOT NULL,
    medicaoTemperatura DATETIME DEFAULT CURRENT_TIMESTAMP
);
