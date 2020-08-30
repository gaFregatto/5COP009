SELECT CONCAT(empregado.nome) AS empregado, CONCAT(chefe.nome) AS chefe
FROM empregado
LEFT JOIN empregado AS chefe
ON empregado.cod_emp_chefe = chefe.codigo_emp;