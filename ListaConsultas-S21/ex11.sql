SELECT oferta.ano_sem, oferta.sigla_ofer, oferta.cod_depto, oferta.num_disc, creditos_disc, SUM(num_horas) AS periodo_num_horas
FROM oferta
    LEFT OUTER JOIN disciplina
USING
(cod_depto,        num_disc
)
LEFT OUTER JOIN periodo
USING
(cod_depto, num_disc)
GROUP BY oferta.ano_sem, oferta.sigla_ofer, oferta.cod_depto, oferta.num_disc, creditos_disc