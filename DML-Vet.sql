-- Inputing at least 3 values at each table
-- Date format: yyyy-mm-dd

INSERT INTO tb_veterinarios (nome, especialidade, telefone) VALUES
('Ana Costa', 'Clínica Geral', '011987654321'),
('Carlos Souza', 'Cardiologia', '021998765432'),
('Fernanda Lima', 'Dermatologia', '031999887766');

INSERT INTO tb_clientes (nome, endereco, telefone) VALUES
('João Silva', 'Rua dos Três Irmãos, 123, São Paulo, SP', '011912345678'),
('Maria Oliveira', 'Avenida Paulista, 1578, São Paulo, SP', '011923456789'),
('Pedro Santos', 'Travessa da Consolação, 45, São Paulo, SP', '011934567890');

INSERT INTO tb_pets (nome, tipo, raca, data_nascimento, id_cliente) VALUES
('Luna', 'Gato', 'Siamês', '2022-12-05', '2'),
('Pingo', 'Pássaro', 'Canário', '2023-03-12', '1'),
('Nina', 'Cachorro', 'Golden Retriever', '2020-09-30', '3');

INSERT INTO tb_atendimentos (data_atendimento, descricao, id_pet, id_veterinario) VALUES
('2024-09-05', 'Atendimento de Cardiologia com para Luna, Gato Siamês', '1', '2'),
('2024-09-10', 'Atendimento de Clínica Geral para Pingo, Pássaro Canário', '2', '1'),
('2024-09-15', 'Atendimento de Dermatologia para Nina, Cachorro Golden Retriever', '3', '3');