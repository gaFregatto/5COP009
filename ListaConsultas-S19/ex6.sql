SELECT DISTINCT nome_depto
FROM depto
JOIN professor
USING (cod_depto)
JOIN prof_oferta
USING (cod_prof)
JOIN oferta
USING (ano_sem, num_disc, sigla_ofer)
JOIN periodo
USING (ano_sem, num_disc, sigla_ofer)
JOIN sala
USING (cod_pred, num_sala)
JOIN predio
USING (cod_pred)
WHERE nome_pred = 'Informatica - laboratorio';