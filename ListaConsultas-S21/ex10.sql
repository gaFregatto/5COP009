SELECT cod_depto, num_disc, nome_disc, COUNT(*) AS num_prereq
FROM disciplina
    LEFT OUTER JOIN prereq
USING (cod_depto,   num_disc
) 
WHERE disciplina.cod_depto = prereq.cod_depto
    AND disciplina.num_disc = prereq.num_disc
GROUP BY cod_depto, num_disc