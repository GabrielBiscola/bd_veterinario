-- Create database
CREATE DATABASE bd_vet;

-- Acess database
USE bd_vet;

-- Create tables
CREATE TABLE tb_veterinarios(
id_veterinario INT(10) NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(50) NOT NULL,
telefone VARCHAR (12) NOT NULL,
PRIMARY KEY (id_veterinario)
);

CREATE TABLE tb_clientes(
id_cliente INT(10) NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
endereco VARCHAR(200) NOT NULL,
telefone VARCHAR (12) NOT NULL,
PRIMARY KEY (id_cliente)
);

CREATE TABLE tb_pets(
id_pet INT(10) NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
tipo VARCHAR(20) NOT NULL,
raca VARCHAR(30) NOT NULL,
data_nascimento DATE NOT NULL,
id_cliente INT(10) NOT NULL,
PRIMARY KEY (id_pet),
FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id_cliente)
);

CREATE TABLE tb_atendimentos(
id_atendimento INT(10) NOT NULL AUTO_INCREMENT,
data_atendimento DATE NOT NULL,
descricao VARCHAR(150) NOT NULL,
id_pet INT(10) NOT NULL,
id_veterinario INT(10) NOT NULL,
PRIMARY KEY (id_atendimento),
FOREIGN KEY (id_pet) REFERENCES tb_pets(id_pet),
FOREIGN KEY (id_veterinario) REFERENCES tb_veterinarios(id_veterinario)
);