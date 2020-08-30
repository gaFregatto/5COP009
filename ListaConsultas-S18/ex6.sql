SELECT DISTINCT depto.nome_depto
FROM depto, disciplina
WHERE depto.cod_depto = disciplina.cod_depto;