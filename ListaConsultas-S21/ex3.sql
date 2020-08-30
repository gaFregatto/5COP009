SELECT nome_peca AS peca_mais_pesada
FROM peca
WHERE peso_peca = (
    SELECT MAX(peso_peca) AS maior_peso
FROM peca
)