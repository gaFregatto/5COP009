SELECT aux.cod_fornec, aux.nome_fornec, aux.cod_peca, aux.nome_peca
FROM (
    SELECT fornecedor.cod_fornec, fornecedor.nome_fornec, peca.cod_peca, peca.nome_peca
    FROM fornecedor
    JOIN peca 
    ON fornecedor.cidade_fornec <> peca.cidade_peca
) AS aux, embarque
WHERE embarque.cod_fornec = aux.cod_fornec
AND embarque.cod_peca = aux.cod_peca;