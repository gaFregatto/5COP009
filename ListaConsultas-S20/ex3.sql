SELECT nome_prof
FROM professor
WHERE EXISTS(
    SELECT professor.cod_tit, professor.cod_depto
FROM depto, titulacao
WHERE (
    depto.cod_depto = professor.cod_depto AND
    nome_depto = 'Informatica' AND
    titulacao.cod_tit = professor.cod_tit AND
    nome_tit = 'Doutor'
    )
)