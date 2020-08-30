SELECT cidade_peca, AVG(peso_peca) AS media_pesos
FROM peca
GROUP BY cidade_peca
