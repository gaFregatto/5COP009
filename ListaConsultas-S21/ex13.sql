WITH
    professor_com_oferta
    AS
    (
        SELECT COUNT(*) AS professor_com_oferta
        FROM professor
        WHERE cod_depto = 'INF01'
    )
SELECT ano_sem
FROM prof_oferta, professor_com_oferta
WHERE professor_com_oferta = (SELECT COUNT(DISTINCT (cod_depto, cod_prof)
) FROM professor_com_oferta)