SELECT DISTINCT fornecedor.nome_fornec
FROM fornecedor, embarque, peca
WHERE fornecedor.cod_fornec = embarque.cod_fornec
AND embarque.cod_peca = 'P1'
AND peso_peca > 4
AND cidade_peca = cidade_fornec
AND embarque.cod_peca = peca.cod_peca;