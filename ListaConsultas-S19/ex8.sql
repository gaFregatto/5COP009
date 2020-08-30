SELECT DISTINCT depto.nome_depto
FROM depto
NATURAL JOIN professor
NATURAL JOIN titulacao
WHERE nome_tit = 'Mestre';