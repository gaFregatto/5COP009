SELECT DISTINCT depto.nome_depto
FROM depto
JOIN (
    SELECT professor.cod_depto
    FROM professor, prof_oferta, oferta, periodo, sala, predio
    WHERE prof_oferta.cod_prof = professor.cod_prof
    AND prof_oferta.ano_sem = oferta.ano_sem
    AND prof_oferta.cod_depto = oferta.cod_depto
    AND prof_oferta.num_disc = oferta.num_disc
    AND prof_oferta.sigla_ofer = oferta.sigla_ofer
    AND oferta.ano_sem = periodo.ano_sem
    AND oferta.cod_depto = periodo.cod_depto
    AND oferta.num_disc = periodo.num_disc
    AND oferta.sigla_ofer = periodo.sigla_ofer
    AND periodo.cod_pred = sala.cod_pred
    AND periodo.num_sala = sala.num_sala
    AND nome_pred = 'Informatica - laboratorio'
) as i
ON i.cod_depto = depto.cod_depto;