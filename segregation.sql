create database escola;
drop database notas;
use escola;
create table alunos(
id int primary key auto_increment,
curso varchar(50),
aluno varchar(50),
);

create table notas(
id int primary key auto_increment,
aluno varchar(50),
nota1semestre int,
nota2semestre int,
FOREIGN KEY (aluno) REFERENCES alunos(aluno)
);


insert into alunos (curso) values ('ads'),('redes'),('eletronica'),('ads');
insert into notas (aluno, nota1semestre, nota2semestre) values ('Julia', 8, 9),('Pablo', 6, 6), ('Yosh', 8, 9),('Manoel', 7, 7), ('Vitor', 8, 9);

select * from notas;
SELECT MIN(nota1semestre)
FROM notas;

select * from notas;
SELECT MAX(nota1semestre)
FROM notas;

select avg(nota2semestre)
from notas;

select sum(id)
from notas;

select count(id)
from notas;


drop table notas;

show columns from notas;