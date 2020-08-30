SELECT depto.cod_depto
FROM depto
WHERE NOT EXISTS (
    SELECT *
FROM titulacao
WHERE NOT EXISTS (
        SELECT *
FROM professor
WHERE professor.cod_tit = titulacao.cod_tit
    )
)