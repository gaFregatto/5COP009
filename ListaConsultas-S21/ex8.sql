SELECT cod_fornec, MIN(qtde_embarq)  AS media_embarq
FROM embarque
GROUP BY cod_fornec