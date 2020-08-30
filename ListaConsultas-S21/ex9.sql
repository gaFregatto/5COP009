SELECT cod_fornec
FROM embarque
WHERE qtde_embarq = (SELECT MAX(qtde_embarq)
FROM embarque)

