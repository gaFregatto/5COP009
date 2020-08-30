SELECT fornecedor.cod_fornec, fornecedor.nome_fornec, peca.cod_peca, peca.nome_peca
FROM fornecedor 
JOIN embarque
USING (cod_fornec)
JOIN peca
USING (cod_peca)
WHERE fornecedor.cidade_fornec <> peca.cidade_peca;