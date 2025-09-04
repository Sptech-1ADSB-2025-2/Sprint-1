CREATE DATABASE NEOGUARD;
Use NEOGUARD;

CREATE TABLE cadastroCliente 
(idCliente INT PRIMARY KEY AUTO_INCREMENT,
 cnpj VARCHAR(14) NOT NULL,
 nome VARCHAR(50) NOT NULL,
 cep VARCHAR(100) NOT NULL,
 transacao VARCHAR(20) NOT NULL,
 dtCont DATE NOT NULL,
 telefone VARCHAR(20),
 email VARCHAR(40),
 nomeRep VARCHAR(80),
 plano VARCHAR(10) CONSTRAINT CHECK( chkPlano in('ativo', 'nao ativo'))
 );
 
 CREATE TABLE loginCliente(
 idCliente INT PRIMARY KEY,
 email VARCHAR(25) NOT NULL,
 senha varchar(20)NOT NULL,
 telefone VARCHAR(14)
 );
 
 CREATE TABLE hospital(
 idIncubadora INT PRIMARY KEY AUTO_INCREMENT,
 numeroSala INT DEFAULT 1,
 estado VARCHAR(10), CONSTRAINT chkStatus CHECK (estado IN ('Em uso', 'Em desuso'))
 );