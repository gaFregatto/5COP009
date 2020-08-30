EXEC ('CREATE SCHEMA passagens_aereas;')

CREATE TABLE passagens_aereas.reserva
(
    cod_reserva SERIAL,
    passageiro VARCHAR(50) NOT NULL,
    validade DATE NOT NULL,
    CONSTRAINT pk_reservas PRIMARY KEY (cod_reserva)
);

CREATE TABLE passagens_aereas.tipo_aeronave
(
    cod_aeronave CHAR(5) NOT NULL,
    nome_classe VARCHAR(20) NOT NULL,
    qtd_assentos INTEGER NOT NULL,
    CONSTRAINT pk_tipo_aeronave PRIMARY KEY (cod_aeronave)
);

CREATE TABLE passagens_aereas.voo
(
    cod_voo INTEGER NOT NULL,
    CONSTRAINT pk_voo PRIMARY KEY (cod_voo)
);

CREATE TABLE passagens_aereas.assento
(
    cod_assento SMALLINT NOT NULL,
    CONSTRAINT pk_assento PRIMARY KEY (cod_assento)
);

CREATE TABLE passagens_aereas.cidade
(
    cod_cidade CHAR(5) NOT NULL,
    nome VARCHAR(40) NOT NULL,
    CONSTRAINT pk_cidade PRIMARY KEY (cod_cidade)
);

CREATE TABLE passagens_aereas.aeroporto
(
    cod_aeroporto CHAR(5) NOT NULL,
    cidad char(5) NOT NULL,
    CONSTRAINT pk_aeroporto PRIMARY KEY (cod_aeroporto),
    CONSTRAINT fk_cidade FOREIGN KEY (cidad) 
        REFERENCES passagens_aereas.cidade (cod_cidade)
);

CREATE TABLE passagens_aereas.trecho
(
    cod_trecho SERIAL,
    dia DATE NULL,
    classe CHAR(5) NOT NULL,
    cd_voo INTEGER NOT NULL,
    cd_assento SMALLINT NOT NULL,
    origem CHAR(5) NOT NULL,
    destino CHAR(5) NOT NULL,
    CONSTRAINT pk_trecho PRIMARY KEY (cod_trecho),
    CONSTRAINT fk_tipo_aeronave FOREIGN KEY (classe) 
        REFERENCES passagens_aereas.tipo_aeronave (cod_aeronave) 
            ON UPDATE NO ACTION,
    CONSTRAINT fk_voo FOREIGN KEY (cd_voo) 
        REFERENCES passagens_aereas.voo (cod_voo) 
            ON DELETE CASCADE 
            ON UPDATE CASCADE,
    CONSTRAINT fk_assento FOREIGN KEY (cd_assento) 
        REFERENCES passagens_aereas.assento (cod_assento),
    CONSTRAINT fk_aeroporto_origem FOREIGN KEY (origem)
        REFERENCES passagens_aereas.aeroporto (cod_aeroporto),
    CONSTRAINT fk_aeroporto_destino FOREIGN KEY (destino) 
        REFERENCES passagens_aereas.aeroporto (cod_aeroporto)
);

CREATE TABLE passagens_aereas.horario
(
    cod_horario CHAR(5) NOT NULL,
    saida INTEGER NOT NULL,
    chegada INTEGER NOT NULL,
    trecho SMALLINT NOT NULL,
    CONSTRAINT pk_horario PRIMARY KEY (cod_horario),
    CONSTRAINT fk_trecho FOREIGN KEY (trecho) 
        REFERENCES passagens_aereas.trecho (cod_trecho)
);

CREATE TABLE passagens_aereas.res_tre
(
    cod_res SMALLINT NOT NULL,
    cod_tre SMALLINT NOT NULL,
    cod_assent SMALLINT NOT NULL,
    CONSTRAINT fk_reserva FOREIGN KEY (cod_res) 
        REFERENCES passagens_aereas.reserva (cod_reserva),
    CONSTRAINT fk_trecho FOREIGN KEY (cod_tre) 
        REFERENCES passagens_aereas.trecho (cod_trecho),
    CONSTRAINT fk_assento FOREIGN KEY (cod_assent) 
        REFERENCES passagens_aereas.assento (cod_assento)
);

CREATE TABLE passagens_aereas.aeronave_assento
(
    cod_ass SMALLINT NOT NULL,
    cod_aeronav CHAR(5) NOT NULL,
    CONSTRAINT fk_assento FOREIGN KEY (cod_ass) 
        REFERENCES passagens_aereas.assento (cod_assento),
    CONSTRAINT fk_aeronave FOREIGN KEY (cod_aeronav) 
        REFERENCES passagens_aereas.tipo_aeronave (cod_aeronave)
);

