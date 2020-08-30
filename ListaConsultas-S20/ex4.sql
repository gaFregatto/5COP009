SELECT nome_prof
FROM professor, prof_oferta
WHERE professor.cod_depto
NOT IN
(
    SELECT cod_depto
    FROM depto
    WHERE nome_depto = 'Informatica'
) AND professor.cod_prof IN (
    SELECT prof_oferta.cod_prof
    FROM oferta, disciplina
    WHERE prof_oferta.cod_depto = 'INF01'
        AND prof_oferta.ano_sem = 20021
        AND disciplina.cod_depto = 'INF01'
        AND disciplina.creditos_disc > 3
)