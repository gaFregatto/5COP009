SELECT embarque.cod_peca, data_embarq, qtde_embarq
FROM embarque, fornecedor, peca
WHERE embarque.cod_fornec = fornecedor.cod_fornec
AND embarque.cod_fornec = 'F1'
AND embarque.cod_peca = peca.cod_peca;