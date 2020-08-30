DELETE FROM prereq
WHERE cod_depto_prereq IN
(
    SELECT cod_depto
FROM depto
WHERE nome_depto = 'Matematica' 
);

DELETE FROM prereq
WHERE cod_depto IN
(
    SELECT cod_depto
FROM depto
WHERE nome_depto = 'Matematica' 
);

DELETE FROM oferta
WHERE cod_depto IN (
    SELECT cod_depto
FROM depto
WHERE nome_depto = 'Matematica'
);

DELETE FROM disciplina
WHERE cod_depto IN (
    SELECT
    cod_depto
FROM depto
WHERE nome_depto = 'Matematica'
);