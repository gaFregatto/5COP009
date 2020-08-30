SELECT p.ano_sem
FROM(
    SELECT depto.cod_depto, disciplina.num_disc
    FROM depto, disciplina
    WHERE depto.nome_depto = 'Informatica'
    AND depto.cod_depto = disciplina.cod_depto
) AS i,
(
    SELECT professor.cod_prof
    FROM professor, depto
    WHERE professor.cod_depto = depto.cod_depto
    AND nome_depto = 'Matematica'
) AS m,
prof_oferta AS p
WHERE i.cod_depto = p.cod_depto 
AND i.num_disc = p.num_disc
AND m.cod_prof = p.cod_prof;