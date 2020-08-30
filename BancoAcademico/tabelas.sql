CREATE TABLE depto
(
    cod_depto CHAR(5) NOT NULL,
    nome_depto VARCHAR(40) NOT NULL,
    CONSTRAINT pk_depto PRIMARY KEY (cod_depto)
);

CREATE TABLE titulacao
(
    cod_tit SERIAL,
    nome_tit VARCHAR(40) NOT NULL,
    CONSTRAINT pk_titulacao PRIMARY KEY (cod_tit)
);

CREATE TABLE professor
(
    cod_prof SERIAL,
    nome_prof VARCHAR(50) NOT NULL,
    cod_depto CHAR(5) NOT NULL,
    cod_tit INTEGER NULL,
    CONSTRAINT pk_professor PRIMARY KEY (cod_prof),
    CONSTRAINT fk_depto FOREIGN KEY (cod_depto)
        REFERENCES depto (cod_depto),
    CONSTRAINT fk_titulacao FOREIGN KEY (cod_tit)
        REFERENCES titulacao (cod_tit)
);

CREATE TABLE disciplina
(
    cod_depto CHAR(5) NOT NULL,
    num_disc SMALLINT NOT NULL,
    nome_disc VARCHAR(40) NOT NULL,
    creditos_disc SMALLINT NOT NULL,
    CONSTRAINT pk_disciplina PRIMARY KEY (cod_depto, num_disc),
    CONSTRAINT fk_depto FOREIGN KEY (cod_depto)
        REFERENCES depto (cod_depto)
);

CREATE TABLE prereq
(
    cod_depto CHAR(5) NOT NULL,
    num_disc SMALLINT NOT NULL,
    cod_depto_prereq CHAR(5) NOT NULL,
    num_disc_prereq SMALLINT NOT NULL,
    CONSTRAINT pk_prereq PRIMARY KEY (cod_depto, num_disc),
    CONSTRAINT fk1_disciplina FOREIGN KEY (cod_depto, num_disc)
        REFERENCES disciplina (cod_depto, num_disc),
    CONSTRAINT fk2_disciplina FOREIGN KEY (cod_depto_prereq, num_disc_prereq)
        REFERENCES disciplina (cod_depto, num_disc)
);

CREATE TABLE oferta
(
    ano_sem INTEGER NOT NULL,
    cod_depto CHAR(5) NOT NULL,
    num_disc SMALLINT NOT NULL,
    sigla_ofer CHAR(1) NOT NULL,
    capacidade_ofer SMALLINT NOT NULL,
    CONSTRAINT pk_oferta PRIMARY KEY (ano_sem, cod_depto, num_disc, sigla_ofer),
    CONSTRAINT fk_disciplina FOREIGN KEY (cod_depto, num_disc)
        REFERENCES disciplina (cod_depto, num_disc)
);

CREATE TABLE prof_oferta
(
    ano_sem INTEGER NOT NULL,
    cod_depto CHAR(5) NOT NULL,
    num_disc SMALLINT NOT NULL,
    sigla_ofer CHAR(1) NOT NULL,
    cod_prof SMALLINT NOT NULL,
    CONSTRAINT pk_prof_oferta PRIMARY KEY (ano_sem, cod_depto, num_disc, sigla_ofer, cod_prof),
    CONSTRAINT fk_oferta FOREIGN KEY (ano_sem, cod_depto, num_disc, sigla_ofer)
        REFERENCES oferta (ano_sem, cod_depto, num_disc, sigla_ofer),
    CONSTRAINT fk_professor FOREIGN KEY (cod_prof)
        REFERENCES professor (cod_prof)
);

CREATE TABLE predio
(
    cod_pred INTEGER NOT NULL,
    nome_pred VARCHAR(50) NOT NULL,
    CONSTRAINT pk_predio PRIMARY KEY (cod_pred)
);

CREATE TABLE sala
(
    cod_pred INTEGER NOT NULL,
    num_sala SMALLINT NOT NULL,
    descricao_sala VARCHAR(50) NOT NULL,
    capacidade_sala SMALLINT NULL,
    CONSTRAINT pk_sala PRIMARY KEY (cod_pred, num_sala),
    CONSTRAINT fk_predio FOREIGN KEY (cod_pred)
        REFERENCES predio (cod_pred)
);

CREATE TABLE periodo
(
    ano_sem INTEGER NOT NULL,
    cod_depto CHAR(5) NOT NULL,
    num_disc SMALLINT NOT NULL,
    sigla_ofer CHAR(1) NOT NULL,
    dia_sem SMALLINT NOT NULL,
    hora_inicio SMALLINT NOT NULL,
    cod_pred INTEGER NOT NULL,
    num_sala SMALLINT NOT NULL,
    num_horas SMALLINT NOT NULL,
    CONSTRAINT pk_periodo PRIMARY KEY (ano_sem, cod_depto, num_disc, sigla_ofer, dia_sem, hora_inicio),
    CONSTRAINT fk_oferta FOREIGN KEY (ano_sem, cod_depto, num_disc, sigla_ofer)
        REFERENCES oferta (ano_sem, cod_depto, num_disc, sigla_ofer),
    CONSTRAINT fk_sala FOREIGN KEY (cod_pred, num_sala)
        REFERENCES sala (cod_pred, num_sala)
);
