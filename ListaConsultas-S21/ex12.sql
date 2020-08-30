SELECT ano_sem
FROM prof_oferta
GROUP BY ano_sem
HAVING 
    COUNT(DISTINCT (cod_depto, cod_prof)) =
(SELECT COUNT(*)
FROM professor
WHERE professor.cod_depto = 'INF01')

