SELECT cod_depto, nome_depto, num_disc, nome_disc, ano_sem, sigla_ofer
FROM depto
NATURAL LEFT JOIN disciplina
NATURAL LEFT JOIN oferta