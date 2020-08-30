SELECT empregado.nome, chefe.nome, chefechefe.nome
FROM empregado, empregado AS chefe, empregado AS chefechefe
WHERE empregado.cod_emp_chefe = chefe.codigo_emp
AND chefe.cod_emp_chefe = chefechefe.codigo_emp; 