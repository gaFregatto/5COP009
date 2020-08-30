SELECT peca.cod_peca, nome_peca, peso_peca
FROM (
    SELECT peca.cod_peca
    FROM peca, embarque, fornecedor
    WHERE embarque.cod_fornec = fornecedor.cod_fornec
    AND fornecedor.nome_fornec = 'Silva'
    AND peca.cod_peca = embarque.cod_peca
) AS p, peca
WHERE p.cod_peca = peca.cod_peca;