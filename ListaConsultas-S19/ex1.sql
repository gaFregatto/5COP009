SELECT DISTINCT depto.cod_depto, depto.nome_depto
FROM depto
JOIN 
(
    SELECT cod_depto
    FROM professor, titulacao
    WHERE professor.cod_tit = titulacao.cod_tit
    AND titulacao.nome_tit = 'Mestre'
) AS t
ON t.cod_depto = depto.cod_depto;