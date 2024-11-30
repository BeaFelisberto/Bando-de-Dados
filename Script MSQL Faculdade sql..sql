create database sistema_faculdade;

use db_sistema_faculdade;

create table tbl_curso (
id int not null primary key auto_increment,
nome_curso varchar (45),
coordenador varchar (45),
unique index(id)

);

create table tbl_estudantes (
id int not null primary key auto_increment,
nome varchar (100),
modelo_da_matricula varchar (45),
CPF varchar (45),
email varchar (45),
curso varchar (45),
id_curso int not null,


constraint FK_curso_estudantes
foreign key (id_curso)
references 	tbl_curso.id,

unique index(id)
);

create table tbl_disciplina (
id int not null primary key auto_increment,
nome varchar (45),
curso varchar (45),
id_curso int not null,


constraint FK_curso_disciplina
foreign key (id_curso)
references tbl_curso.id,

unique index(id)

);

check table tbl_curso;
check table tbl_estudantes;
check table tbl_disciplina;

create table tbl_professor (
id int not null primary key auto_increment,
area_de_atuacao varchar (45),
nome varchar (100),
CPF varchar (45),
id_disciplina int not null,

constraint FK_disciplina_professor
foreign key (id_disciplina)
references tbl_disciplina.id,

unique index (id)

);

create table tbl_turma (
id int not null primary key auto_increment,
salas varchar (45),
semestre varchar (45),
id_disciplina int not null,
id_professor int not null,

constraint FK_disciplina_turma
foreign key (id_disciplina)
references tbl_disciplina.id,

constraint FK_professor_turma
foreign key (id_professor)
references tbl_professor,

unique index (id)

);

create table tbl_professor_disciplina (
id int not null primary key auto_increment,
id_disciplina int not null,
id_professor int not null,

constraint FK_disciplina_professor_disciplina
foreign key (id_disciplina)
references tbl_disciplina,

constraint FK_professores_professor_disciplina
foreign key (id_professor)
references tbl_professor,

unique index (id)

);