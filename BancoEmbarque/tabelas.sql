CREATE DATABASE embarque;

CREATE TABLE peca 
(
    cod_peca CHAR(2) NOT NULL,
    nome_peca VARCHAR(20) NOT NULL,
    peso_peca SMALLINT NULL, 
    cor_peca VARCHAR(20) NULL, 
    cidade_peca VARCHAR(50) NULL,
    CONSTRAINT pk_peca
        PRIMARY KEY (cod_peca)
);

CREATE TABLE fornecedor
(
    cod_fornec CHAR(2) NOT NULL,
    nome_fornec VARCHAR(50) NOT NULL,
    status_fornec SMALLINT NULL,
    cidade_fornec VARCHAR(50) NULL,
    CONSTRAINT pk_fornecedor 
        PRIMARY KEY (cod_fornec)
);

CREATE TABLE embarque
(
    cod_fornec CHAR(2) NOT NULL,
    cod_peca CHAR(2) NOT NULL,
    data_embarq DATE NOT NULL,
    qtde_embarq INTEGER NOT NULL,
    CONSTRAINT pk_embarque 
        PRIMARY KEY (cod_fornec, cod_peca, data_embarq),
    CONSTRAINT fk_peca
        FOREIGN KEY (cod_peca) 
            REFERENCES peca (cod_peca)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT fk_fornec
        FOREIGN KEY (cod_fornec)
            REFERENCES fornecedor (cod_fornec)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);