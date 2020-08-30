CREATE TABLE empregado 
(
    codigo_emp INTEGER NOT NULL, 
    nome VARCHAR(50) NOT NULL, 
    cod_emp_chefe INTEGER NULL,
    CONSTRAINT pk_empregado 
        PRIMARY KEY (codigo_emp),
    CONSTRAINT fk_empregado
        FOREIGN KEY (cod_emp_chefe)
        REFERENCES empregado(codigo_emp)
);