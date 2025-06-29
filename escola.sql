create database escola;
USE escola;

create table Aluno (
    id_aluno int primary key auto_increment,
    nome varchar(100),
    data_nascimento date,
    email varchar(100)
);

create table Professor (
    id_professor int primary key auto_increment,
    nome varchar(100),
    especialidade varchar(100),
    email varchar(100)
);

create table Disciplina (
    id_disciplina int primary key auto_increment,
    nome varchar(100),
    carga_horaria int,
    id_professor int,
    foreign key (id_professor) references Professor(id_professor)
);

create table Matricula (
    id_matricula int primary key auto_increment,
    id_aluno int,
    id_disciplina int,
    ano int,
    semestre int,
    foreign key (id_aluno) references Aluno(id_aluno),
    foreign key (id_disciplina) references Disciplina(id_disciplina)
);