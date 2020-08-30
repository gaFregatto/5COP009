SELECT 
    CONCAT(empregado.nome, ' - ', chefe.nome) AS emp_chefe,
    CONCAT(empregado.nome, ' - ', chefechefe.nome) AS emp_chefe_chefe 
FROM 
    empregado, 
    empregado AS chefe, 
    empregado AS chefechefe
WHERE 
    empregado.cod_emp_chefe = chefe.codigo_emp AND 
    chefe.cod_emp_chefe = chefechefe.codigo_emp;