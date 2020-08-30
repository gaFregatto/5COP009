SELECT cor_peca , COUNT(DISTINCT cidade_peca) AS cidades_distintas
FROM peca
GROUP BY cor_peca