-- Recuperações Simples com SELECT Statement
	-- Quais são todos os alunos cadastrados?
select * from Aluno;

-- Filtros com WHERE Statement
	-- Quais alunos têm o nome "Maria"?
select * from Aluno
where nome = 'Maria';

select * from Aluno
where nome like 'Maria%';

-- Expressões para Gerar Atributos Derivados
	-- Quais alunos têm idade maior que 18 anos? (Considerando a data atual)
select nome, YEAR(CURDATE()) - YEAR(data_nascimento) as idade
from Aluno
where YEAR(CURDATE()) - YEAR(data_nascimento) >= 24;

-- Defina Ordenações dos Dados com ORDER BY
	-- Quais são todos os professores ordenados pelo nome?
select * from Professor
order by nome asc;

-- Condições de Filtros aos Grupos – HAVING statement
	-- Quantos alunos estão matriculados em cada disciplina? (Exibindo apenas disciplinas com mais de 2 alunos)
select d.nome, count(m.id_aluno) as total_alunos
from Disciplina d
left join Matricula m on d.id_disciplina = m.id_disciplina
group by d.id_disciplina
having total_alunos > 2;