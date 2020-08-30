SELECT peca.cod_peca, nome_peca, peso_peca
FROM peca, fornecedor, embarque
WHERE peca.cod_peca = embarque.cod_peca
AND embarque.cod_fornec = fornecedor.cod_fornec
AND nome_fornec = 'Silva';
