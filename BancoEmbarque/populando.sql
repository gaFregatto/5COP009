INSERT INTO peca
    (cod_peca, nome_peca, peso_peca, cor_peca, cidade_peca)
VALUES
    ('P1', 'Parafuso', 5, 'Cinza', 'Porto Alegre'),
    ('P2', 'Arruela', 5, 'Cinza', 'Porto Alegre'),
    ('P3', 'Mancal', 25, 'Vermelho', 'Rio'),
    ('P4', 'Eixo', 15, 'Verde', 'Rio'),
    ('P5', 'Motor', 65, 'Vermelho', NULL);

INSERT INTO fornecedor
    (cod_fornec, nome_fornec, status_fornec, cidade_fornec)
VALUES
    ('F1', 'Antunes', 5, 'Porto Alegre'),
    ('F2', 'Silva', 10, 'Porto Alegre'),
    ('F3', 'Souza', 15, 'Curitiba'),
    ('F6', 'Antunes', 10, 'Rio'),
    ('F4', 'Machado', 10, NULL),
    ('F5', 'Barcelos', 12, 'Rio');

INSERT INTO embarque
    (cod_fornec, cod_peca, data_embarq, qtde_embarq)
VALUES
    ('F1', 'P1', '2000-01-12', 300),
    ('F1', 'P1', '2000-01-15', 200),
    ('F1', 'P2', '2000-01-12', 350),
    ('F1', 'P3', '2000-07-22', 250),
    ('F1', 'P4', '2000-01-12', 150),
    ('F1', 'P5', '2000-05-14', 200),
    ('F2', 'P1', '2000-01-12', 300),
    ('F2', 'P1', '2000-12-04', 300),
    ('F2', 'P2', '2000-12-04', 350),
    ('F2', 'P3', '2000-12-04', 250),
    ('F2', 'P4', '2000-09-24', 150),
    ('F3', 'P2', '2000-04-04', 200),
    ('F3', 'P3', '2000-10-30', 350);