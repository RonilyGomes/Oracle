-- -----------------------------------------------------
-- Schema lacerdaesantana
-- -----------------------------------------------------

CREATE USER lacerdaesantana IDENTIFIED BY lacerdaesantana;
GRANT CONNECT, RESOURCE, DBA TO lacerdaesantana;
ALTER SESSION SET CURRENT_SCHEMA = lacerdaesantana ;

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`cliente`
-- -----------------------------------------------------

/
CREATE TABLE lacerdaesantana.cliente (
  cliente_id NUMBER(10) CHECK (cliente_id > 0) NULL,
  cliente_nome VARCHAR2(100) NOT NULL,
  cliente_cpf VARCHAR2(15) NOT NULL,
  cliente_rg VARCHAR2(15) NOT NULL,
  cliente_rgEmissor VARCHAR2(10) NOT NULL,
  cliente_sexo VARCHAR2(1) NOT NULL,
  cliente_celular VARCHAR2(20) NOT NULL,
  cliente_telefone VARCHAR2(20) NULL,
  cliente_nomeMae VARCHAR2(100) NOT NULL,
  cliente_dataNascimento DATE NOT NULL,
  cliente_naturalidade VARCHAR2(20) NOT NULL,
  cliente_estCivil VARCHAR2(1) NOT NULL,
  cliente_pendencias CLOB NULL,
  cliente_profissao VARCHAR2(50) NOT NULL,
  endereco_cep VARCHAR2(10) NOT NULL,
  endereco_rua VARCHAR2(100) NOT NULL,
  endereco_num VARCHAR2(10) NULL,
  endereco_bairro VARCHAR2(50) NOT NULL,
  endereco_cidade VARCHAR2(50) NOT NULL,
  endereco_uf VARCHAR2(2) NOT NULL,
  PRIMARY KEY (cliente_id),
  CONSTRAINT cliente_cpf_UNIQUE UNIQUE  (cliente_cpf),
  CONSTRAINT cliente_rg_UNIQUE UNIQUE  (cliente_rg),
  CONSTRAINT cliente_telefone_UNIQUE UNIQUE  (cliente_telefone),
  CONSTRAINT cliente_celular_UNIQUE UNIQUE  (cliente_celular))
;

-- Generate ID using trigger
/
CREATE OR REPLACE TRIGGER lacerdaesantana.cliente_autoincrement
 BEFORE INSERT ON lacerdaesantana.cliente FOR EACH ROW
 WHEN (NEW.cliente_id IS NULL)
BEGIN
  SELECT MAX(cliente.cliente_id) INTO :NEW.cliente_id FROM cliente;
  IF :NEW.cliente_id IS NULL THEN
    :NEW.cliente_id := 1;
  ELSE
    :NEW.cliente_id := :NEW.cliente_id + 1;
  END IF;
END;

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`advogado`
-- -----------------------------------------------------

/
CREATE TABLE lacerdaesantana.advogado (
  adv_id NUMBER(10) CHECK (adv_id > 0) NULL,
  adv_nome VARCHAR2(100) NOT NULL,
  adv_oab VARCHAR2(10) NOT NULL,
  adv_oabSeccional VARCHAR2(2) NOT NULL,
  adv_cpf VARCHAR2(15) NOT NULL,
  adv_dataNascimento DATE NOT NULL,
  adv_celular VARCHAR2(20) NOT NULL,
  adv_telefone VARCHAR2(20) NULL,
  endereco_cep VARCHAR2(10) NOT NULL,
  endereco_rua VARCHAR2(100) NOT NULL,
  endereco_num VARCHAR2(10) NOT NULL,
  endereco_bairro VARCHAR2(50) NOT NULL,
  endereco_cidade VARCHAR2(50) NOT NULL,
  endereco_uf VARCHAR2(2) NOT NULL,
  PRIMARY KEY (adv_id),
  CONSTRAINT adv_oab_UNIQUE UNIQUE  (adv_oab, adv_oabSeccional),
  CONSTRAINT adv_cpf_UNIQUE UNIQUE  (adv_cpf),
  CONSTRAINT adv_celular_UNIQUE UNIQUE  (adv_celular),
  CONSTRAINT adv_telefone_UNIQUE UNIQUE  (adv_telefone))
;

-- Generate ID using trigger
/
CREATE OR REPLACE TRIGGER lacerdaesantana.advogado_autoincrement
 BEFORE INSERT ON lacerdaesantana.advogado FOR EACH ROW
 WHEN (NEW.adv_id IS NULL)
BEGIN
  SELECT MAX(advogado.adv_id) INTO :NEW.adv_id FROM advogado;
  IF :NEW.adv_id IS NULL THEN
    :NEW.adv_id := 1;
  ELSE
    :NEW.adv_id := :NEW.adv_id + 1;
  END IF;
END;

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`escritorio`
-- -----------------------------------------------------

/
CREATE TABLE lacerdaesantana.escritorio (
  esc_id NUMBER(10) CHECK (esc_id > 0) NULL,
  esc_descricao VARCHAR2(50) NOT NULL,
  esc_telefone VARCHAR2(20) NOT NULL,
  endereco_cep VARCHAR2(10) NOT NULL,
  endereco_rua VARCHAR2(100) NOT NULL,
  endereco_num VARCHAR2(10) NULL,
  endereco_bairro VARCHAR2(50) NOT NULL,
  endereco_cidade VARCHAR2(50) NOT NULL,
  endereco_uf VARCHAR2(2) NOT NULL,
  PRIMARY KEY (esc_id),
  CONSTRAINT esc_telefone_UNIQUE UNIQUE  (esc_telefone),
  CONSTRAINT esc_descricao_UNIQUE UNIQUE  (esc_descricao),
  CONSTRAINT endereco_cep_UNIQUE UNIQUE  (endereco_cep))
;

-- Generate ID using trigger
/
CREATE OR REPLACE TRIGGER lacerdaesantana.escritorio_autoincrement
 BEFORE INSERT ON lacerdaesantana.escritorio FOR EACH ROW
 WHEN (NEW.esc_id IS NULL)
BEGIN
  SELECT MAX(escritorio.esc_id) INTO :NEW.esc_id FROM escritorio;
  IF :NEW.esc_id IS NULL THEN
    :NEW.esc_id := 1;
  ELSE
    :NEW.esc_id := :NEW.esc_id + 1;
  END IF;
END;

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`advogado_escritorio`
-- -----------------------------------------------------

/
CREATE TABLE lacerdaesantana.advogado_escritorio (
  adv_id NUMBER(10) CHECK (adv_id > 0) NOT NULL,
  esc_id NUMBER(10) CHECK (esc_id > 0) NOT NULL,
  PRIMARY KEY (adv_id, esc_id)
 ,
  CONSTRAINT FK_advEsc_advogado
    FOREIGN KEY (adv_id)
    REFERENCES lacerdaesantana.advogado (adv_id)
    ON DELETE CASCADE
   ,
  CONSTRAINT FK_advEsc_escritorio
    FOREIGN KEY (esc_id)
    REFERENCES lacerdaesantana.escritorio (esc_id)
    ON DELETE CASCADE
   )
;


/
CREATE INDEX FK_advEsc_escritorio_idx ON lacerdaesantana.advogado_escritorio (esc_id ASC);

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`fase`
-- -----------------------------------------------------

/
CREATE TABLE lacerdaesantana.fase (
  fase_id NUMBER(10) CHECK (fase_id > 0) NULL,
  fase_desc VARCHAR2(50) NOT NULL,
  PRIMARY KEY (fase_id),
  CONSTRAINT fase_desc_UNIQUE UNIQUE  (fase_desc))
;

-- Generate ID using trigger
/
CREATE OR REPLACE TRIGGER lacerdaesantana.fase_autoincrement
 BEFORE INSERT ON lacerdaesantana.fase FOR EACH ROW
 WHEN (NEW.fase_id IS NULL)
BEGIN
  SELECT MAX(fase.fase_id) INTO :NEW.fase_id FROM fase;
  IF :NEW.fase_id IS NULL THEN
    :NEW.fase_id := 1;
  ELSE
    :NEW.fase_id := :NEW.fase_id + 1;
  END IF;
END;

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`vara`
-- -----------------------------------------------------

/
CREATE TABLE lacerdaesantana.vara (
  vara_id NUMBER(10) CHECK (vara_id > 0) NULL,
  vara_desc VARCHAR2(100) NOT NULL,
  PRIMARY KEY (vara_id),
  CONSTRAINT vara_desc_UNIQUE UNIQUE  (vara_desc))
;

-- Generate ID using trigger
/
CREATE OR REPLACE TRIGGER lacerdaesantana.vara_autoincrement
 BEFORE INSERT ON lacerdaesantana.vara FOR EACH ROW
 WHEN (NEW.vara_id IS NULL)
BEGIN
  SELECT MAX(vara.vara_id) INTO :NEW.vara_id FROM vara;
  IF :NEW.vara_id IS NULL THEN
    :NEW.vara_id := 1;
  ELSE
    :NEW.vara_id := :NEW.vara_id + 1;
  END IF;
END;

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`acao`
-- -----------------------------------------------------

/
CREATE TABLE lacerdaesantana.acao (
  acao_id NUMBER(10) CHECK (acao_id > 0) NULL,
  acao_desc VARCHAR2(100) NOT NULL,
  PRIMARY KEY (acao_id),
  CONSTRAINT acao_desc_UNIQUE UNIQUE  (acao_desc))
;

-- Generate ID using trigger
/
CREATE OR REPLACE TRIGGER lacerdaesantana.acao_autoincrement
 BEFORE INSERT ON lacerdaesantana.acao FOR EACH ROW
 WHEN (NEW.acao_id IS NULL)
BEGIN
  SELECT MAX(acao.acao_id) INTO :NEW.acao_id FROM acao;
  IF :NEW.acao_id IS NULL THEN
    :NEW.acao_id := 1;
  ELSE
    :NEW.acao_id := :NEW.acao_id + 1;
  END IF;
END;

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`processo`
-- -----------------------------------------------------

/
CREATE TABLE lacerdaesantana.processo (
  processo_id NUMBER(10) CHECK (processo_id > 0) NULL,
  processo_cliente NUMBER(10) CHECK (processo_cliente > 0) NOT NULL,
  processo_vara NUMBER(10) CHECK (processo_vara > 0) NOT NULL,
  processo_acao NUMBER(10) CHECK (processo_acao > 0) NOT NULL,
  processo_numero VARCHAR2(50) NOT NULL,
  processo_pendencias CLOB NULL,
  PRIMARY KEY (processo_id, processo_cliente),
  CONSTRAINT processo_numero_UNIQUE UNIQUE  (processo_numero),
  CONSTRAINT processo_id_UNIQUE UNIQUE  (processo_id)
 ,
  CONSTRAINT FK_processo_cliente
    FOREIGN KEY (processo_cliente)
    REFERENCES lacerdaesantana.cliente (cliente_id)
   ,
  CONSTRAINT FK_processo_vara
    FOREIGN KEY (processo_vara)
    REFERENCES lacerdaesantana.vara (vara_id)
   ,
  CONSTRAINT FK_processo_acao
    FOREIGN KEY (processo_acao)
    REFERENCES lacerdaesantana.acao (acao_id)
   )
;

-- Generate ID using trigger
/
CREATE OR REPLACE TRIGGER lacerdaesantana.processo_autoincrement
 BEFORE INSERT ON lacerdaesantana.processo FOR EACH ROW
 WHEN (NEW.processo_id IS NULL)
BEGIN
  SELECT MAX(processo.processo_id) INTO :NEW.processo_id FROM processo;
  IF :NEW.processo_id IS NULL THEN
    :NEW.processo_id := 1;
  ELSE
    :NEW.processo_id := :NEW.processo_id + 1;
  END IF;
END;



/
CREATE INDEX FK_processo_cliente_idx ON lacerdaesantana.processo (processo_cliente ASC);

/
CREATE INDEX FK_processo_vara_idx ON lacerdaesantana.processo (processo_vara ASC);

/
CREATE INDEX FK_processo_acao_idx ON lacerdaesantana.processo (processo_acao ASC);

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`processo_status`
-- -----------------------------------------------------


/
CREATE TABLE lacerdaesantana.processo_status (
  processo_id NUMBER(10) CHECK (processo_id > 0) NULL,
  fase_id NUMBER(10) CHECK (fase_id > 0) NULL,
  data TIMESTAMP(0) NOT NULL,
  PRIMARY KEY (processo_id, fase_id)
 ,
  CONSTRAINT FK_prostatus_processo
    FOREIGN KEY (processo_id)
    REFERENCES lacerdaesantana.processo (processo_id)
   ,
  CONSTRAINT FK_prostatus_fase
    FOREIGN KEY (fase_id)
    REFERENCES lacerdaesantana.fase (fase_id)
   )
;

/
CREATE INDEX FK_prostatus_fase_idx ON lacerdaesantana.processo_status (fase_id ASC);

/
CREATE INDEX IX_prostatus_processo_idx ON lacerdaesantana.processo_status (processo_id ASC);

-- -----------------------------------------------------
-- Table `lacerdaesantana`.`processo_atendimento`
-- -----------------------------------------------------
/
CREATE TABLE lacerdaesantana.processo_atendimento (
  processo_id NUMBER(10) CHECK (processo_id > 0) NOT NULL,
  escritorio_id NUMBER(10) CHECK (escritorio_id > 0) NOT NULL,
  advogado_id NUMBER(10) CHECK (advogado_id > 0) NOT NULL,
  dataInicio DATE NOT NULL,
  dataFim DATE NOT NULL,
  PRIMARY KEY (processo_id, escritorio_id, advogado_id)
 ,
  CONSTRAINT FK_proccesAtendimento_procces
    FOREIGN KEY (processo_id)
    REFERENCES lacerdaesantana.processo (processo_id)
   ,
  CONSTRAINT FK_processoAtendimento_advEsc
    FOREIGN KEY (escritorio_id , advogado_id)
    REFERENCES lacerdaesantana.advogado_escritorio (esc_id , adv_id)
   )
;

/
CREATE INDEX FK_procesAtend_advEsc_idx ON lacerdaesantana.processo_atendimento (escritorio_id ASC, advogado_id ASC);

/
CREATE INDEX IX_procesAtend_processo_idx ON lacerdaesantana.processo_atendimento (processo_id ASC);