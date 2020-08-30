SELECT COUNT(DISTINCT cod_fornec) AS fornecedores_d_PortoAlegre_c_embarque
FROM embarque
NATURAL JOIN fornecedor 
WHERE cidade_fornec = 'Porto Alegre'