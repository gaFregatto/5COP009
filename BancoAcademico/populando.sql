INSERT INTO depto
    (cod_depto, nome_depto)
VALUES
    ('INF01', 'Informatica'),
    ('MED01', 'Medicina Interna'),
    ('MAT01', 'Matematica'),
    ('FIS01', 'Fisica');

INSERT INTO titulacao
    (nome_tit)
VALUES
    ('Graduado'),
    ('Especialista'),
    ('Mestre'),
    ('Doutor');

INSERT INTO professor
    (cod_depto, cod_tit, nome_prof)
VALUES
    ('INF01', 4, 'Souza'),
    ('INF01', 4, 'Antunes'),
    ('INF01', 4, 'Macedo'),
    ('INF01', NULL, 'Machado'),
    ('INF01', 3, 'Tavares'),
    ('INF01', 3, 'Pereira'),
    ('MAT01', 4, 'Alvares'),
    ('MAT01', 4, 'Silva'),
    ('MAT01', NULL, 'Souza'),
    ('INF01', NULL, 'Machado'),
    ('INF01', 4, 'Moreira');

INSERT INTO disciplina
    (cod_depto, num_disc, nome_disc, creditos_disc)
VALUES
    ('MAT01', 101, 'Calculo Diferencial', 4),
    ('MAT01', 102, 'Algebra Linear', 4),
    ('MAT01', 103, 'Geometria Analitica', 4),
    ('INF01', 101, 'Programacao FORTRAN', 4),
    ('INF01', 102, 'Algoritmos e Programacao', 6),
    ('INF01', 103, 'Estrutura de Dados', 4),
    ('INF01', 104, 'Programacao Logica', 4),
    ('INF01', 105, 'Teoria da Computacao', 4),
    ('INF01', 106, 'Banco de Dados', 4),
    ('INF01', 107, 'Linguagens Formais', 2),
    ('INF01', 108, 'Compiladores', 4),
    ('INF01', 109, 'Classificacao e Pesquisa', 6);

INSERT INTO prereq
    (cod_depto, num_disc, cod_depto_prereq, num_disc_prereq)
VALUES
    ('INF01', 109, 'INF01', 108),
    ('INF01', 108, 'INF01', 106),
    ('INF01', 107, 'INF01', 104),
    ('INF01', 106, 'INF01', 104),
    ('INF01', 105, 'INF01', 104),
    ('INF01', 104, 'INF01', 102),
    ('INF01', 103, 'INF01', 102),
    ('MAT01', 103, 'MAT01', 101);

INSERT INTO oferta
    (ano_sem, cod_depto, num_disc, sigla_ofer, capacidade_ofer)
VALUES
    (20021, 'MAT01', 101, 'A', 40),
    (20021, 'MAT01', 101, 'B', 40),
    (20021, 'MAT01', 101, 'C', 40),
    (20021, 'INF01', 101, 'A', 40),
    (20021, 'INF01', 101, 'B', 40),
    (20021, 'INF01', 102, 'A', 20),
    (20021, 'INF01', 102, 'B', 20),
    (20021, 'INF01', 102, 'C', 20),
    (20021, 'INF01', 103, 'U', 60),
    (20021, 'INF01', 104, 'U', 40),
    (20021, 'INF01', 105, 'U', 40),
    (20021, 'INF01', 106, 'A', 30),
    (20021, 'INF01', 106, 'B', 30),
    (20021, 'INF01', 107, 'U', 70),
    (20021, 'INF01', 108, 'U', 40),
    (20021, 'INF01', 109, 'U', 40),
    (20022, 'MAT01', 102, 'A', 40),
    (20022, 'MAT01', 102, 'B', 40),
    (20022, 'MAT01', 102, 'C', 40),
    (20022, 'INF01', 101, 'U', 20),
    (20022, 'INF01', 102, 'A', 20),
    (20022, 'INF01', 102, 'B', 20),
    (20022, 'INF01', 102, 'C', 20),
    (20022, 'INF01', 103, 'U', 60),
    (20022, 'INF01', 104, 'U', 40),
    (20022, 'INF01', 105, 'U', 40),
    (20022, 'INF01', 106, 'U', 70),
    (20022, 'INF01', 107, 'A', 30),
    (20022, 'INF01', 107, 'B', 40),
    (20022, 'INF01', 109, 'U', 40);

INSERT INTO prof_oferta
    (ano_sem, cod_depto, num_disc, sigla_ofer, cod_prof)
VALUES
    (20021, 'MAT01', 101, 'A', 10),
    (20021, 'MAT01', 101, 'A', 11),
    (20021, 'MAT01', 101, 'A', 2),
    (20021, 'MAT01', 101, 'B', 7),
    (20021, 'MAT01', 101, 'C', 8),
    (20021, 'INF01', 101, 'A', 4),
    (20021, 'INF01', 101, 'A', 5),
    (20021, 'INF01', 101, 'B', 1),
    (20021, 'INF01', 102, 'A', 2),
    (20021, 'INF01', 102, 'B', 3),
    (20021, 'INF01', 102, 'C', 6),
    (20021, 'INF01', 102, 'C', 5),
    (20021, 'INF01', 103, 'U', 7),
    (20021, 'INF01', 104, 'U', 4),
    (20021, 'INF01', 105, 'U', 2),
    (20021, 'INF01', 106, 'A', 3),
    (20021, 'INF01', 106, 'B', 6),
    (20021, 'INF01', 107, 'U', 5),
    (20021, 'INF01', 108, 'U', 4),
    (20021, 'INF01', 109, 'U', 5),
    (20022, 'MAT01', 102, 'A', 3),
    (20022, 'MAT01', 102, 'B', 6),
    (20022, 'MAT01', 102, 'C', 5),
    (20022, 'INF01', 101, 'U', 2),
    (20022, 'INF01', 102, 'A', 6),
    (20022, 'INF01', 102, 'B', 1),
    (20022, 'INF01', 102, 'C', 2),
    (20022, 'INF01', 103, 'U', 3),
    (20022, 'INF01', 104, 'U', 2),
    (20022, 'INF01', 105, 'U', 1),
    (20022, 'INF01', 106, 'U', 6),
    (20022, 'INF01', 107, 'A', 3),
    (20022, 'INF01', 107, 'B', 4),
    (20022, 'INF01', 109, 'U', 3);

INSERT INTO predio
    (cod_pred, nome_pred)
VALUES
    (43421, 'Informatica - laboratorio'),
    (43422, 'Informatica - administracao'),
    (43423, 'Informatica - aulas');

INSERT INTO sala
    (cod_pred, num_sala, descricao_sala, capacidade_sala)
VALUES
    (43421, 101, 'Laboratorio Windowns', 30),
    (43421, 102, 'Laboratorio Redes', 30),
    (43421, 103, 'Laboratorio Linux', 30),
    (43421, 104, 'Laboratorio Windowns', 30),
    (43421, 105, 'Laboratorio Linux', 30),
    (43421, 106, 'Laboratorio Hardware', 30),
    (43421, 107, 'Laboratorio Automação', 30),
    (43422, 101, 'Secretaria Geral', NULL),
    (43422, 102, 'Secretaria Graduacao', NULL),
    (43422, 103, 'Secretaria Pos Graduacao', NULL),
    (43423, 101, 'Sala de aula comum', 30),
    (43423, 102, 'Sala de aula comum', 30),
    (43423, 103, 'Sala de aula comum', 30),
    (43423, 104, 'Sala de aula comum', 30),
    (43423, 105, 'Auditorio', 80),
    (43423, 106, 'Sala de aula laboratorio', 30),
    (43423, 107, 'Sala de aula laboratorio', 30);

INSERT INTO periodo
    (ano_sem, cod_depto, num_disc, sigla_ofer, dia_sem, hora_inicio, cod_pred, num_sala, num_horas)
VALUES
    (20021, 'MAT01', 101, 'A', 2, 8, 43423, 101, 2),
    (20021, 'MAT01', 101, 'A', 4, 8, 43423, 101, 2),
    (20021, 'MAT01', 101, 'B', 2, 10, 43423, 101, 2),
    (20021, 'MAT01', 101, 'B', 4, 10, 43423, 101, 2),
    (20021, 'MAT01', 101, 'C', 2, 8, 43423, 102, 2),
    (20021, 'MAT01', 101, 'C', 4, 8, 43423, 102, 2),
    (20021, 'INF01', 101, 'A', 2, 8, 43421, 102, 2),
    (20021, 'INF01', 101, 'A', 4, 8, 43421, 102, 2),
    (20021, 'INF01', 101, 'B', 2, 18, 43421, 102, 2),
    (20021, 'INF01', 101, 'B', 4, 18, 43421, 102, 2),
    (20021, 'INF01', 102, 'A', 2, 8, 43421, 101, 2),
    (20021, 'INF01', 102, 'A', 4, 8, 43421, 103, 2),
    (20021, 'INF01', 102, 'A', 6, 8, 43421, 103, 2);