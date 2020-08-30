SELECT depto.cod_depto, depto.nome_depto, disciplina.num_disc, disciplina.nome_disc
FROM depto
NATURAL LEFT JOIN disciplina;