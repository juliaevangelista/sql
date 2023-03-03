create database clinica;
use clinica;
create table medico(
id_medico int primary key,
nome_medico varchar(255),
cpf varchar(55),
data_nascimento date,
foto_medico longblob,
telefone varchar(55),
numero_crm int,
id_especialidade int,
id_estado_crm int,
id_clinica int
);
create table clinica_medico(
id_clinica_medico int primary key,
id_clinica int,
id_medico int
);
drop table clinica_medico;
create table especialidade(
id_especialidade int primary key,
nome_especialidade varchar(255)
);
create table estado(
id_estado int primary key,
nome_estado varchar(255),
sigla_estado varchar(2)
);
create table agendamento(
id_agendamento int primary key,
id_usuario int,
id_medico int,
data_agendamento date,
hora_inicio varchar(5),
hora_fim varchar(5),
descricao text
);
create table clinica(
id_clinica int primary key,
razao_social varchar(255),
cnpj varchar(255),
email varchar(255),
telefone varchar(55),
atende_sus boolean,
valor_consulta double,
id_endereco int
);
create table usuario(
id_usuario int,
nome_usuario varchar(255),
email varchar(255),
senha varchar(255),
foto_usuario longblob
);
create table endereco_clinica(
id_endereco int primary key,
rua varchar(255),
bairro varchar(55),
numero int,
complemento varchar(55),
cep varchar(55),
id_cidade int
);
create table cidade(
id_cidade int primary key,
nome_cidade varchar(255),
id_estado int
);
create table cep(
id int primary key,
cidade varchar(255),
rua varchar(255),
bairro varchar(255),
cep varchar(255),
tipo varchar(255)
);