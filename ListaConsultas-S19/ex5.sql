SELECT DISTINCT depto.cod_depto, depto.nome_depto
FROM depto
JOIN professor
USING (cod_depto)
JOIN titulacao
USING (cod_tit)
WHERE nome_tit = 'Mestre';