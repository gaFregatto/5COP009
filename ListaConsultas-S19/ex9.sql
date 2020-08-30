SELECT DISTINCT nome_prof
FROM professor
NATURAL JOIN prof_oferta
WHERE ano_sem = 20022;