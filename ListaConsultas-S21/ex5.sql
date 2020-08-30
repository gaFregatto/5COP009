SELECT cod_fornec,
    MIN(qtde_embarq) AS menor_embarq
FROM embarque
GROUP BY cod_fornec