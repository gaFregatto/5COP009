UPDATE prof_oferta
SET cod_prof = 7
WHERE EXISTS(
    SELECT oferta.ano_sem, oferta.cod_depto, oferta.num_disc, oferta.sigla_ofer
FROM oferta
WHERE oferta.ano_sem = 20021 AND
    oferta.cod_depto = 'MAT01' AND
    oferta.num_disc = 101 AND
    oferta.sigla_ofer = 'C' 
);

UPDATE prof_oferta
SET cod_prof = 9
WHERE EXISTS(
    SELECT oferta.ano_sem, oferta.cod_depto, oferta.num_disc, oferta.sigla_ofer
FROM oferta
WHERE oferta.ano_sem = 20021 AND
    oferta.cod_depto = 'MAT01' AND
    oferta.num_disc = 101 AND
    oferta.sigla_ofer = 'C' 
);
