 -- Insert into estado
 INSERT INTO estado (nome, uf) VALUES
 ('São Paulo', 'SP'),
 ('Rio de Janeiro', 'RJ'),
 ('Minas Gerais', 'MG'),
 ('Bahia', 'BA'),
 ('Paraná', 'PR'),
 ('Rio Grande do Sul', 'RS'),
 ('Santa Catarina', 'SC'),
 ('Pernambuco', 'PE'),
 ('Ceará', 'CE'),
 ('Goiás', 'GO'),
 ('Amazonas', 'AM'),
 ('Mato Grosso', 'MT'),
 ('Espírito Santo', 'ES'),
 ('Paraíba', 'PB'),
 ('Maranhão', 'MA');

-- Insert into cidade
 INSERT INTO cidade (nome, estado_idestado) VALUES
 ('São Paulo', 1),
 ('Rio de Janeiro', 2),
 ('Belo Horizonte', 3),
 ('Salvador', 4),
 ('Curitiba', 5),
 ('Porto Alegre', 6),
 ('Florianópolis', 7),
 ('Recife', 8),
 ('Fortaleza', 9),
 ('Goiânia', 10),
 ('Manaus', 11),
 ('Cuiabá', 12),
 ('Vitória', 13),
 ('João Pessoa', 14),
 ('São Luís', 15);

-- Insert into funcionario
 INSERT INTO funcionario (nome, cpf, endereco, data_contratacao, salario, cidade_idcidade) VALUES
 ('João Silva', 12345678901, 'Rua A, 100', '2020-01-15', 3000.00, 1),
 ('Maria Souza', 23456789012, 'Rua B, 200', '2019-05-20', 3200.00, 2),
 ('Carlos Pereira', 34567890123, 'Rua C, 300', '2018-03-25', 2800.00, 3),
 ('Ana Costa', 45678901234, 'Rua D, 400', '2021-07-10', 3500.00, 4),
 ('Paulo Oliveira', 56789012345, 'Rua E, 500', '2017-11-05', 3100.00, 5),
 ('Fernanda Lima', 67890123456, 'Rua F, 600', '2016-02-18', 2900.00, 6),
 ('Bruno Rodrigues', 78901234567, 'Rua G, 700', '2022-04-22', 3400.00, 7),
 ('Juliana Almeida', 89012345678, 'Rua H, 800', '2020-06-30', 3200.00, 8),
 ('Ricardo Santos', 90123456789, 'Rua I, 900', '2019-09-15', 3000.00, 9),
 ('Laura Martins', 11234567890, 'Rua J, 1000', '2021-01-20', 3100.00, 10),
 ('Pedro Gonçalves', 22345678901, 'Rua K, 1100', '2018-04-25', 3300.00, 11),
 ('Mariana Ferreira', 33456789012, 'Rua L, 1200', '2017-07-30', 2800.00, 12),
 ('Lucas Barbosa', 44567890123, 'Rua M, 1300', '2022-02-05', 3500.00, 13),
 ('Patrícia Nunes', 55678901234, 'Rua N, 1400', '2016-05-10', 2900.00, 14),
 ('Gabriel Ribeiro', 66789012345, 'Rua O, 1500', '2021-09-25', 3400.00, 15);

-- Insert into veterinario
 INSERT INTO veterinario (crv, funcionario_idfuncionario) VALUES
 (1001, 1),
 (1002, 2),
 (1003, 3),
 (1004, 4),
 (1005, 5),
 (1006, 6),
 (1007, 7),
 (1008, 8),
 (1009, 9),
 (1010, 10),
 (1011, 11),
 (1012, 12),
 (1013, 13),
 (1014, 14),
 (1015, 15);

-- Insert into especie
 INSERT INTO especie (nome) VALUES
 ('Cachorro'),
 ('Gato'),
 ('Pássaro'),
 ('Coelho'),
 ('Hamster'),
 ('Peixe'),
 ('Cavalo'),
 ('Tartaruga'),
 ('Cobra'),
 ('Porquinho-da-Índia'),
 ('Rato'),
 ('Lagarto'),
 ('Ovelha'),
 ('Vaca'),
 ('Porco');

-- Insert into cliente_dono
 INSERT INTO cliente_dono (nome, endereco, cpf, cidade_idcidade) VALUES
 ('Lucas Silva', 'Rua Q, 2000', '12345678900', 1),
 ('Ana Pereira', 'Rua R, 2100', '23456789011', 2),
 ('Carlos Santos', 'Rua S, 2200', '34567890122', 3),
 ('Maria Oliveira', 'Rua T, 2300', '45678901233', 4),
 ('Pedro Almeida', 'Rua U, 2400', '56789012344', 4),
 ('Fernanda Costa', 'Rua V, 2500', '67890123455', 6),
 ('João Gonçalves', 'Rua W, 2600', '78901234566', 7),
 ('Juliana Lima', 'Rua X, 2700', '89012345677', 8),
 ('Ricardo Martins', 'Rua Y, 2800', '90123456788', 9),
 ('Laura Ferreira', 'Rua Z, 2900', '11234567899', 10),
 ('Bruno Nunes', 'Rua AA, 3000', '22345678900', 11),
 ('Mariana Barbosa', 'Rua BB, 3100', '33456789011', 12),
 ('Patrícia Ribeiro', 'Rua CC, 3200', '44567890122', 13),
 ('Gabriel Souza', 'Rua DD, 3300', '55678901233', 14),
 ('Paulo Silva', 'Rua EE, 3400', '66789012344', 15);

-- Insert into animal_paciente
 INSERT INTO animal_paciente (nome, idade, idespecie, idcliente_dono, massa_kg, alergico) VALUES 
 ('Rex', 5, 1, 1, 20.5, 0),
 ('Mia', 3, 2, 2, 4.2, 1),
 ('Loro', 2, 3, 3, 0.3, 0),
 ('Bunny', 1, 4, 4, 1.5, 0),
 ('Hammy', 2, 5, 5, 0.1, 1),
 ('Nemo', 1, 6, 6, 0.2, 0),
 ('Spirit', 6, 7, 7, 500.0, 0),
 ('Shelly', 10, 8, 8, 2.0, 0),
 ('Piglet', 1, 10, 10, 0.5, 0),
 ('Lizzy', 3, 12, 12, 0.5, 0),
 ('Dolly', 4, 13, 13, 60.0, 0),
 ('Bessie', 5, 14, 14, 700.0, 0),
 ('Bola Augusto', 4, 1, 9, 5.5, 0),
 ('Doki', 7, 1, 11, 5.0, 1),
 ('Porky', 2, 15, 15, 50.0, 1),
 ('John Snow', 2, 1, 11, 8.0, 0);

-- Insert into atendimento
 INSERT INTO atendimento (descricao, idpaciente, data_hora, diagnostico, valor_total) VALUES
 ('Consulta geral', 1, '2023-01-15 10:00:00', 'Descoberta de carrapatos', 150.00), 
 ('Vacinação', 2, '2023-01-16 11:00:00', 'Vacina aplicada', 95.00),
 ('Exame de sangue', 3, '2023-01-17 12:00:00', 'Anemia detectada', 190.00),
 ('Cirurgia', 4, '2023-01-18 13:00:00', 'Recuperação em andamento', 535.00),
 ('Exame de raio x', 5, '2023-01-19 14:00:00', 'Tornozelo quebrado', 160.00),
 ('Castração', 6, '2023-01-20 15:00:00', 'Recuperação em andamento', 125.00),
 ('Exame de sangue', 7, '2023-01-21 16:00:00', 'Anemia detectada', 190.00),
 ('Cirurgia', 8, '2023-01-22 17:00:00', 'Recuperação em andamento', 535.00),
 ('Tratamento oftamológico', 9, '2023-01-23 18:00:00', 'Cataratas', 100.00),
 ('Banho e tosa', 10, '2023-01-24 10:00:00', 'Descoberta de carrapatos', 95.00),
 ('Tratamento odontológico', 11, '2023-01-25 11:00:00', 'Remoção de tártaro', 105.00),
 ('Internação', 12, '2023-01-26 12:00:00', 'Anemia detectada', 190.00),
 ('Consulta geral', 13, '2023-01-27 13:00:00', 'Dor de barriga por ingestão de biscoito', 110.00),
 ('Vacinação', 14, '2023-01-28 14:00:00', 'Vacina aplicada', 95.00),
 ('Exame de ultrassom', 15, '2023-01-29 15:00:00', 'Saudável', 135.00);

-- Insert into fornecedor
 INSERT INTO fornecedor (nome, cnpj, inscricao_estadual, endereco, cidade_idcidade, tel_contato) VALUES
 ('Fornecedor A', 12345678000101, 123456789, 'Rua A, 100', 1, 11987654321),
 ('Fornecedor B', 23456789000102, 234567890, 'Rua B, 200', 2, 21987654321),
 ('Fornecedor C', 34567890000103, 345678901, 'Rua C, 300', 3, 31987654321),
 ('Fornecedor D', 45678901000104, 456789012, 'Rua D, 400', 4, 41987654321),
 ('Fornecedor E', 56789012000105, 567890123, 'Rua E, 500', 2, 51987654321),
 ('Fornecedor F', 67890123000106, 678901234, 'Rua F, 600', 6, 61987654321),
 ('Fornecedor G', 78901234000107, 789012345, 'Rua G, 700', 7, 71987654321),
 ('Fornecedor H', 89012345000108, 890123456, 'Rua H, 800', 8, 81987654321),
 ('Fornecedor I', 90123456000109, 901234567, 'Rua I, 900', 9, 91987654321),
 ('Fornecedor J', 11234567000110, 112345678, 'Rua J, 1000', 1, 11987654322),
 ('Fornecedor K', 22345678000111, 223456789, 'Rua K, 1100', 4, 21987654322),
 ('Fornecedor L', 33456789000112, 334567890, 'Rua L, 1200', 1, 31987654322),
 ('Fornecedor M', 44567890000113, 445678901, 'Rua M, 1300', 1, 41987654322),
 ('Fornecedor N', 55678901000114, 556789012, 'Rua N, 1400', 4, 51987654322),
 ('Fornecedor O', 66789012000115, 667890123, 'Rua O, 1500', 4, 61987654322);

-- Insert into medicamento
 INSERT INTO medicamento (nome, data_validade, data_fabricacao, data_compra, valor_aplicacao, fornecedor_idfornecedor) VALUES
 ('Medicamento A', '2025-01-01', '2023-01-01', '2024-01-01', 50.00, 1),
 ('Medicamento B', '2025-02-01', '2023-02-01', '2024-02-01', 45.00, 2),
 ('Medicamento C', '2025-03-01', '2023-03-01', '2024-03-01', 40.00, 3),
 ('Medicamento D', '2025-04-01', '2023-04-01', '2024-04-01', 35.00, 4),
 ('Medicamento E', '2025-05-01', '2023-05-01', '2024-05-01', 30.00, 5),
 ('Medicamento F', '2025-06-01', '2023-06-01', '2024-06-01', 25.00, 6),
 ('Medicamento G', '2025-07-01', '2023-07-01', '2024-07-01', 20.00, 7),
 ('Medicamento H', '2025-08-01', '2023-08-01', '2024-08-01', 15.00, 8),
 ('Medicamento I', '2025-09-01', '2023-09-01', '2024-09-01', 10.00, 9),
 ('Medicamento J', '2025-10-01', '2023-10-01', '2024-10-01', 5.00, 10),
 ('Medicamento K', '2025-11-01', '2023-11-01', '2024-11-01', 50.00, 11),
 ('Medicamento L', '2025-12-01', '2023-12-01', '2024-12-01', 45.00, 12),
 ('Medicamento M', '2026-01-01', '2024-01-01', '2025-01-01', 40.00, 13),
 ('Medicamento N', '2026-02-01', '2024-02-01', '2025-02-01', 35.00, 14),
 ('Medicamento O', '2026-03-01', '2024-03-01', '2025-03-01', 30.00, 15);

 INSERT INTO atendimento_has_medicamento(atendimento_idconsulta, medicamento_idmedicamento) VALUES
 (1, 1), -- A (carrapatos)
 (2, 2), -- B (vacinação)
 (3, 3), -- C (anemia detectada)
 (4, 4), -- D (cirurgia)
 (5, 5), --  E (raio x)
 (6, 6), -- F (castração)
 (7, 3), -- C (anemia)
 (8, 4), -- D (cirurgia)
 (9, 7), -- G (cataratas)
 (10,1), --  A (carrapatos)
 (11, 8), -- H (tártaro)
 (12, 3), -- C (anemia)
 (13,9 ), --  I (dor de barriga)
 (14, 2), -- B (vacinação)
 (15, 10); -- J (ultrassom)

 INSERT INTO procedimento(idprocedimento, nome,valor_procedimento) VALUES 
 (1, 'Cirurgia', 500.00),
 (2, 'Exame de sangue', 150.00),
 (3, 'Banho e tosa', 45.00),
 (4, 'Exame de ultrassom', 130.00),
 (5, 'Exame de raio x', 130.00),
 (6, 'Castração', 100.00),
 (7, 'Internação', 150.00),
 (8, 'Tratamento oftamológico', 80.00),
 (9, 'Tratamento cardiológico', 100.00),
 (10, 'Tratamento endocrinológico', 135.00),
 (11, 'Tratamento odontológico', 90.00),
 (12, 'Tratamento ortopédico', 75.00),
 (13, 'Anestesia', 60.00),
 (14, 'Consulta geral', 100.00);

 INSERT INTO procedimento (idprocedimento, nome,valor_procedimento,doenca_prevenida, descricao) VALUES
 (15, 'Antirrábica', 50.00, 'Raiva', 'Vacinação'),
 (16, 'Leish-Tec', 50.00, 'Leishmaniose', 'Vacinação'),
 (17, 'Giárdia', 50.00, 'Giárdia', 'Vacinação'),
 (18, 'Gripe canina', 50.00, 'Traqueobronquite Infecciosa Canina', 'Vacinação'),
 (19, 'V8', 50.00, 'Polivalente', 'Vacinação'),
 (20, 'V10', 50.00, 'Polivalente', 'Vacinação'),
 (21, 'V6', 50.00, 'Polivalente', 'Vacinação'), 
 (22, 'V3', 50.00, 'Polivalente Felina', 'Vacinação'),
 (23, 'V4', 50.00, 'Polivalente Felina', 'Vacinação'),
 (24, 'V5', 50.00, 'Polivalente Felina', 'Vacinação'),
 (25, 'KC', 50.00, 'Doenças respiratórias graves', 'Vacinação'), 
 (26, 'Filavac VHD K C+V', 50.00, 'Doença hemorrágica viral do coelho (DHV)', 'Vacinação'),
 (27, 'Nobivac Myxo-RHD Plus', 50.00, 'Mixomatose', 'Vacinação'),
 (28, 'Rika-Vacc Myxo sc', 50.00, 'Mixomatose', 'Vacinação'),
 (29, 'Fluvac innovator® ewt', 50.00, 'Encefalomielite Equina, Tétano', 'Vacinação');

 INSERT INTO atendimento_has_procedimento(atendimento_idconsulta,procedimento_idprocedimento) VALUES
 (1, 14),  -- consulta geral 
 (2, 15), -- vacinação
 (3, 2), -- exame de sangue 
 (4, 1), -- cirurgia
 (5, 5), -- raio x
 (6, 6), -- castração 
 (7, 2), -- exame de sangue
 (8, 1), -- cirurgia
 (9, 8), -- tratamento oftamológico
 (10, 3), -- banho e tosa
 (11, 11), -- tratamento odontológico
 (12, 7), -- internação
 (13, 14), -- consulta geral
 (14, 16), -- vacinação
 (15, 4); --  exame de ultrassom 

 -- insert em funcionario_has_atendimento 
 INSERT INTO funcionario_has_atendimento(funcionario_idfuncionario, atendimento_idconsulta) VALUES
 (1, 2),
 (1, 14),
 (2, 4),
 (2, 8),
 (3, 1),
 (4, 3),
 (5, 5),
 (6, 6),
 (7, 9),
 (8, 10),
 (9, 11),
 (10, 12),
 (11, 15),
 (12, 7),
 (13, 13); 