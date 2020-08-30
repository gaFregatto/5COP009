SELECT DISTINCT peca.cod_peca, nome_peca, peso_peca, cor_peca, cidade_peca
FROM peca
NATURAL JOIN embarque
NATURAL JOIN fornecedor        