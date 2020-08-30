SELECT DISTINCT depto.nome_depto
FROM depto, disciplina
WHERE depto.nome_depto = disciplina.nome_disc;