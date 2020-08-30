SELECT ano_sem, cod_depto, num_disc, sigla_ofer
FROM oferta
EXCEPT 
SELECT ano_sem, cod_depto, num_disc, sigla_ofer
FROM periodo;