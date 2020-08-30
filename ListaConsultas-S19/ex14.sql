SELECT disciplina.nome_disc, disc_prereq.nome_disc AS disc_prereq
FROM disciplina
NATURAL LEFT JOIN prereq
LEFT JOIN disciplina AS disc_prereq
ON disc_prereq.cod_depto = prereq.cod_depto_prereq
AND disc_prereq.num_disc = prereq.num_disc_prereq;
