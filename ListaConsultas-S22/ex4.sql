DELETE FROM oferta
WHERE cod_depto IN(
    SELECT
        cod_depto
    FROM depto
    WHERE nome_depto = 'Matematica'
)