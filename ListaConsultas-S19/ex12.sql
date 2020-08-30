SELECT disciplina.cod_depto, disciplina.num_disc,
    disc_prereq.cod_depto AS cod_depto_prereq,
    disc_prereq.num_disc AS num_disc_prereq
FROM disciplina
    LEFT JOIN prereq
    ON disciplina.cod_depto = prereq.cod_depto
        AND disciplina.num_disc = prereq.num_disc
    LEFT JOIN disciplina AS disc_prereq
    ON prereq.cod_depto_prereq = disc_prereq.cod_depto
        AND prereq.num_disc_prereq = disc_prereq.num_disc;

