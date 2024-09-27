-- Perform the following queries:

-- O pet com a data de nascimento mais antigo
SELECT * FROM tb_pets WHERE data_nascimento = (SELECT MIN(data_nascimento) FROM tb_pets);

-- O pet com a data de nascimento mais recente
SELECT * FROM tb_pets WHERE data_nascimento = (SELECT MAX(data_nascimento) FROM tb_pets);

-- A quantidade de pets cadastrados no banco de dados
SELECT COUNT(nome) AS quantidade_pets FROM tb_pets;

-- Ordene o nome dos pets em ordem crescente
SELECT nome FROM tb_pets ORDER BY nome ASC;

-- Ordene o nome dos pets em ordem decrescente
SELECT nome FROM tb_pets ORDER BY nome DESC;

-- Ordene o nome dos veterinários em ordem crescente
SELECT nome FROM tb_veterinarios ORDER BY nome ASC;

-- Ordene o nome dos veterinários em ordem decrescente
SELECT nome FROM tb_veterinarios ORDER BY nome DESC;

-- A data de atendimento mais antiga
SELECT MIN(data_atendimento) AS data_mais_antiga FROM tb_atendimentos;

-- A data de atendimento mais recente
SELECT MAX(data_atendimento) AS data_mais_nova FROM tb_atendimentos;