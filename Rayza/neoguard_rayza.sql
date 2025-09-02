CREATE DATABASE NEOGUARD;
Use NEOGUARD;

CREATE TABLE cadastroCliente 
(idCliente INT PRIMARY KEY AUTO_INCREMENT,
 cnpj VARCHAR(14) NOT NULL,
 nome_hospital VARCHAR(50) NOT NULL,
 cep_hospital VARCHAR(100) NOT NULL,
 banco VARCHAR(20),
 num_conta_banco CHAR(12),
 dtCont DATE NOT NULL,
 plano VARCHAR(10),
 nome_representante VARCHAR(80) NOT NULL,
 telefone_representante VARCHAR(20) NOT NULL,
 email_representante VARCHAR(40),
 CONSTRAINT chkPlano
 CHECK( plano in('ativo', 'inativo'))
 );
 
 CREATE TABLE loginCliente(
 idCliente INT PRIMARY KEY,
 email VARCHAR(25) NOT NULL,
 senha varchar(20)NOT NULL,
 telefone VARCHAR(14)
 );
 
 CREATE TABLE desh_cliente(
 idIncubadora INT PRIMARY KEY AUTO_INCREMENT,
 numeroSala INT DEFAULT 1,
 temperatura float,
 uso_incubadora varchar(12)
 );
 
