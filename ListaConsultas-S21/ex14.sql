WITH RECURSIVE
prereq_n AS
    (
        (
        SELECT cod_depto, num_disc, cod_depto_prereq, num_disc_prereq
    FROM prereq
    WHERE (cod_depto, num_disc) IN
(
        SELECT cod_depto, num_disc 
    )
)
UNION ALL
    (
        SELECT prereq.cod_depto, prereq.num_disc, prereq_n.cod_depto, prereq_n.num_disc
    FROM prereq, prereq_n
    WHERE prereq.cod_depto = prereq_n.cod_depto
        AND prereq.num_disc = prereq_n.num_disc
    )
)
SELECT *
FROM prereq_n