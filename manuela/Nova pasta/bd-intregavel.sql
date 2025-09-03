CREATE DATABASE neoguard;
USE neoguard;

CREATE TABLE hospital (
	id INT PRIMARY KEY AUTO_INCREMENT,
	cep VARCHAR(100) NOT NULL,
    numero INT,
    nomehospital varchar(70)
);
CREATE TABLE cadastro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	cnpj VARCHAR(50) NOT NULL UNIQUE,
	nome VARCHAR(50) NOT NULL,
	telefone VARCHAR(20),
    dataContratacao DATE NOT NULL,
	email VARCHAR(35) 
);
 CREATE TABLE incubadoras (
	id INT PRIMARY KEY AUTO_INCREMENT,
    incubadora INT NOT NULL,
	sala VARCHAR(50)
);

insert into hospital values
(1,'08000800',234,'Santa casa'),
(2,'08000900',324,'Santa MARCELINA'),
(3,'08000700',432,'upa');

select*from hospital;

insert into cadastro values
(1,'52.574.843/0991-03','santa casa','11 998877665','2025-04-30','santacasa@gmail'),
(2,'52.574.843/2391-03','santa marcelina','11 998879965','2025-06-30','santamarcelina@gmail'),
(3,'52.574.843/0234-03','upa','11 998833465','2025-10-08','upa@gmail');

select*from cadastro;

insert into incubadoras values
(1,1,'sala1'),
(2,2,'sala2'),
(3,3,'sala3');

select*from incubadoras;



