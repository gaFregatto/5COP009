SELECT DISTINCT professor.cod_prof, nome_prof, professor.cod_depto, professor.cod_tit
FROM professor, prof_oferta
WHERE professor.cod_prof = prof_oferta.cod_prof
AND prof_oferta.cod_depto = 'INF01';