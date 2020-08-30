SELECT DISTINCT depto.nome_depto
FROM depto
JOIN(
    SELECT professor.id_depto
    FROM professor, prof_oferta, oferta, periodo, sala, predio
    WHERE porfessor.id_prof = prof_oferta.id_prof
    AND prof_oferta.id_oferta = oferta.id_oferta
    AND periodo.id_oferta = oferta.id_oferta
    AND periodo.id_sala = sala.id_sala
    AND sala.id_predio = predio.id_predio
    AND nome_predio = 'Informatica - laboratio'
) as i
ON i.id_depto = depto.id_depto;