SELECT cod_depto
FROM depto
WHERE nome_depto LIKE 'M%'
EXCEPT
SELECT cod_depto 
FROM oferta;