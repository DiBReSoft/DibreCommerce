CREATE TABLE TB_CLIENTE (
	ID_CLIENTE BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) CONSTRAINT PK_ID_CLIENTE PRIMARY KEY, 
        NM_CLIENTE VARCHAR(100) NOT NULL,
	SEXO_CLIENTE CHAR(1) NOT NULL,
        DT_NASC_CLIENTE DATE NOT NULL,
        CPF_CLIENTE VARCHAR(15) NOT NULL,
        RG_CLIENTE VARCHAR(15) NOT NULL,
	EMAIL_CLIENTE VARCHAR(100) NOT NULL,
        SENHA_CLIENTE VARCHAR (10)NOT NULL,
        NEWSLETTER BOOLEAN NOT NULL,
        PRIVACIDADE BOOLEAN NOT NULL,
        DT_CADASTRO TIMESTAMP NOT NULL
);

