INSERT INTO oferta
    (
    ano_sem,
    cod_depto,
    num_disc,
    sigla_ofer,
    capacidade_ofer
    )
SELECT
    '20031',
    disciplina.cod_depto,
    oferta.num_disc,
    'U',
    '0'
FROM depto, disciplina
WHERE depto.cod_depto = disciplina.cod_depto
    AND depto.nome_depto = 'Informatica'