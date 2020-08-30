SELECT depto.cod_depto, depto.nome_depto, num_disc, nome_disc
FROM depto
LEFT JOIN disciplina
ON depto.cod_depto = disciplina.cod_depto
AND creditos_disc = 6;