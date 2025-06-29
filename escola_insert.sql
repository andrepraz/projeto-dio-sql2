insert into Aluno (nome, data_nascimento, email) values
	('João Silva', '2002-03-15', 'joao.silva@example.com'),
	('Maria Oliveira', '2001-07-22', 'maria.oliveira@example.com'),
	('Pedro Santos', '2000-11-10', 'pedro.santos@example.com'),
	('Ana Costa', '2003-05-30', 'ana.costa@example.com'),
	('Lucas Almeida', '2001-09-18', 'lucas.almeida@example.com');

insert into Professor (nome, especialidade, email) values
	('Carlos Pereira', 'Matemática', 'carlos.pereira@example.com'),
	('Fernanda Lima', 'História', 'fernanda.lima@example.com');
    
insert into Disciplina (nome, carga_horaria, id_professor) values
	('Matemática I', 60, 1),  -- Carlos Pereira
	('História Moderna', 45, 2),  -- Fernanda Lima
	('Geografia Geral', 30, 1);  -- Carlos Pereira
    
insert into Matricula (id_aluno, id_disciplina, ano, semestre) values
	(1, 1, 2023, 1),  -- João em Matemática I
	(2, 1, 2023, 1),  -- Maria em Matemática I
	(3, 1, 2023, 1),  -- Pedro em Matemática I
	(4, 2, 2023, 1),  -- Ana em História Moderna
	(5, 3, 2023, 1);  -- Lucas em Geografia Geral
