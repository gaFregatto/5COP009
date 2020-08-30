SELECT CONCAT(disciplina.nome_disc) AS disciplina, CONCAT(disc_prereq.nome_disc) AS prereq
FROM disciplina, prereq, disciplina AS disc_prereq
WHERE disciplina.cod_depto = prereq.cod_depto
AND disciplina.num_disc = prereq.num_disc
AND disc_prereq.cod_depto = prereq.cod_depto_prereq
AND disc_prereq.num_disc = prereq.num_disc_prereq;