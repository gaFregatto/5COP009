SELECT DISTINCT ano_sem
FROM prof_oferta
WHERE EXISTS (
    SELECT professor.cod_prof
FROM professor
    JOIN depto
    ON (professor.cod_depto = depto.cod_depto AND nome_depto = 'Informatica')
)