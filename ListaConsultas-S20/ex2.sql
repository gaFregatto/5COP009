SELECT DISTINCT ano_sem
FROM oferta
WHERE EXISTS(
    SELECT disciplina.cod_depto, disciplina.num_disc
FROM disciplina
WHERE (disciplina.cod_depto = oferta.cod_depto
    AND disciplina.num_disc = oferta.num_disc
    AND disciplina.nome_disc = 'Programacao FORTRAN'   
    )
)