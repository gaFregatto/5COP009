UPDATE fornecedor
SET
    status_fornec = status_fornec - 5
WHERE EXISTS (
    SELECT cod_fornec
    FROM embarque
    WHERE embarque.cod_fornec = fornecedor.cod_fornec AND
        qtde_embarq < 4    
)
    AND
    status_fornec > 4
    
        