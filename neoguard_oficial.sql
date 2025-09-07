CREATE DATABASE neoguard;
USE neoguard;

CREATE TABLE hospital (
	id INT PRIMARY KEY AUTO_INCREMENT,
	cnpj VARCHAR(50) NOT NULL UNIQUE,
	nome VARCHAR(50) NOT NULL,
	dataContratacao DATE NOT NULL,
	telefone VARCHAR(20),
	email VARCHAR(50) NOT NULL,
	nomeRepresentante VARCHAR(80),
	plano VARCHAR(7),
    CONSTRAINT chkPlano 
		CHECK(plano IN ('ativo', 'inativo'))
);

CREATE TABLE endereco (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idHospital INT,
    estado VARCHAR(100),
    cidade VARCHAR(100),
    bairro VARCHAR(100),
    rua VARCHAR(100),
    cep VARCHAR(100) NOT NULL,
    numero INT
);

 CREATE TABLE loginHospital (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idHospital INT NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha varchar(20) NOT NULL,
	telefone VARCHAR(20)
);
 
 CREATE TABLE incubadora (
	id INT PRIMARY KEY AUTO_INCREMENT,
    idHospital INT NOT NULL,
    numeroIncubadora INT NOT NULL,
	nomeSala VARCHAR(100)
);

CREATE TABLE temperatura (
	id INT PRIMARY KEY AUTO_INCREMENT,
	idIncubadora INT NOT NULL,
    temperatura DECIMAL(3,1) NOT NULL,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO hospital (cnpj, nome, dataContratacao, telefone, email, nomeRepresentante, plano) VALUES 
('52.574.843/0001-03','Santa Marcelina','2025-10-25','4445-2192','santamarcelina@gmail.com','JP','ativo'),
('87.820.368/0001-84','Hospital de Misericordia','2025-11-06','4421-3612','hospitaldemisericordia@gmail.com','Vivian','ativo'),
('36.752.368/0001-90','Cruz Vermelha','2025-09-19','4446-7812','cruzvermelha@gmail.com','Frizza','inativo');

INSERT INTO hospital (cnpj, nome, dataContratacao, telefone, email, nomeRepresentante, plano) VALUES
('12.345.678/0001-90','Hospital Pesquisa e Inovação', '2025-01-01','4002-8922','HPI@gmail.com','Fernanda', 'inativo');

INSERT INTO endereco (idHospital,estado, cidade, bairro, rua, cep, numero) VALUES 
(1,'São Paulo','Jaragua','Serpa','Edna Aparecida','07714000','100'),
(2,'São Paulo','Franco da Rocha','Jardins','Haddock Lobo','09914000','259');

INSERT INTO incubadora (idHospital, numeroIncubadora, nomeSala) VALUES 
(1,1,'Maternidade'),
(2,2,'UTI');

INSERT INTO loginHospital (idHospital, email, senha, telefone) VALUES 
(1,'frizza@gmail.com','1234567','11960983245'),
(2,'vivian@gmail.com','celect','11932245467'),
(1,'jp@gmail.com','urubu100','11967890987');

INSERT INTO temperatura (idIncubadora, temperatura) VALUES
(1,24.3),
(1,23.4),
(2,36.7),
(2,38.4),
(1,36.1),
(2,38.4),
(1,36.5),
(2,38.4),
(1,38.4),
(4,36.0);

SELECT * FROM temperatura;
SELECT * FROM hospital;
SELECT * FROM loginHospital;
SELECT * FROM endereco;
SELECT * FROM incubadora;

SELECT temperatura AS Temperatura, CASE
	WHEN temperatura < 32 THEN "Hipotermia grave"
	WHEN temperatura < 35.9 THEN "Hipotermia moderada"
    WHEN temperatura < 36.4 THEN "Hipotermia leve"
	WHEN temperatura > 37.5 THEN 'Hipertermia'
    ELSE "Temperatura normal"
END AS Situação,
dataHora AS "Data e hora" FROM temperatura WHERE idIncubadora = 1;

