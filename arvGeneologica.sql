CREATE TABLE pessoa
(
    cod_pessoa CHAR(6) NOT NULL,
    sexo CHAR(1) NOT NULL,
    prenome VARCHAR(30) NOT NULL,
    sobrenome VARCHAR(70) NOT NULL,
    data_nasc DATE NOT NULL,
    lugar_nasc CHAR(6) NOT NULL,
    data_faleciemento DATE NULL,
    lugar_falecimento CHAR(6) NULL,
    uniao_geradora CHAR(6) NOT NULL,
    CONSTRAINT pk_pessoa PRIMARY KEY (cod_pessoa),
    CONSTRAINT fk_uniao  FOREIGN KEY (uniao_geradora) 
        REFERENCES uniao (cod_uniao),
    CONSTRAINT fk_nasc FOREIGN KEY (lugar_nasc) 
        REFERENCES lugar (cod_lugar),
    CONSTRAINT fk_falecimento FOREIGN KEY (lugar_falecimento) 
        REFERENCES lugar (cod_lugar),
);

CREATE TABLE lugar
(
    cod_lugar CHAR(6) NOT NULL,
    nome VARCHAR(70) NOT NULL,
    CONSTRAINT pk_lugar PRIMARY KEY (cod_lugar)
);

CREATE TABLE uniao
(
    cod_uniao CHAR(6) NOT NULL,
    cod_marido CHAR(6) NOT NULL,
    cod_esposa CHAR(6) NOT NULL,
    data_uniao DATE NOT NULL,
    lugar CHAR(6) NOT NULL,
    filhos_gerados CHAR(6) NULL,
    CONSTRAINT pk_uniao PRIMARY KEY (cod_uniao),
    CONSTRAINT fk_marido FOREIGN KEY (cod_marido)
        REFERENCES pessoa (cod_pessoa),
    CONSTRAINT fk_esposa FOREIGN KEY (cod_esposa)
        REFERENCES pessoa (cod_pessoa),
    CONSTRAINT fk_lugar FOREIGN KEY (lugar)
        REFERENCES lugar (cod_lugar),
    CONSTRAINT fk_filhos FOREIGN KEY (filhos_gerados)
        REFERENCES filhos (cod_f)
);

CREATE TABLE filhos
(
    cod_f CHAR(6) NOT NULL,
    cod_uniao CHAR(6) NOT NULL,
    cod_pessoa CHAR(6) NOT NULL,
    CONSTRAINT pk_filhos PRIMARY KEY (cod_f),
    CONSTRAINT fk_uniao FOREIGN KEY (cod_uniao)
        REFERENCES uniao (cod_uniao),
    CONSTRAINT fk_pessoa FOREIGN KEY (cod_pessoa)
        REFERENCES pessoa (cod_pessoa)
);

CREATE TABLE unioes
(
    cod_unioes CHAR(6) NOT NULL,
    cod_pessoa CHAR(6) NOT NULL,
    cod_uniao CHAR(6) NOT NULL,
    CONSTRAINT pk_unioes PRIMARY KEY (cod_unioes),
    CONSTRAINT fk_pessoa FOREIGN KEY (cod_pessoa)
        REFERENCES pessoa (cod_pessoa),
    CONSTRAINT fk_uniao FOREIGN KEY (cod_uniao)
        REFERENCES uniao (cod_uniao)
);