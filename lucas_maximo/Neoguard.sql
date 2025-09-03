create database Neoguard;

use Neoguard; 

CREATE TABLE hospital (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
cnpj VARCHAR(14) NOT NULL,
endereço VARCHAR(50) NOT NULL,
telefone VARCHAR(20) not null,
plano VARCHAR(7),
CONSTRAINT chkPlano 
CHECK(plano IN ('ativo', 'inativo'))
);

CREATE TABLE paciente(
 idpaciente INT PRIMARY KEY AUTO_INCREMENT,
 email VARCHAR(50) NOT NULL,
 senha varchar(20)NOT NULL,
 telefone VARCHAR(14)
 );
 
 CREATE TABLE incubadora (
	id INT PRIMARY KEY AUTO_INCREMENT,
    numeroIncubadora INT NOT NULL,
	nomeSala INT NOT NULL
);
