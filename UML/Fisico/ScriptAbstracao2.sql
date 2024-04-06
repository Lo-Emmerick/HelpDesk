-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE HELPDESK

CREATE TABLE HELPDESK.LOG (
ID BIGINT AUTO_INCREMENT PRIMARY KEY,
IDCHAMADO BIGINT,
DESCRICAO VARCHAR(255),
DATAATENDIMENTO DATETIME,
DATACONCLUSAO DATETIME,
GRAU INTEGER,
STATUS VARCHAR(12),
IDATENDIMENTO BIGINT,
FUNCIONARIO VARCHAR(150)
)
CREATE TABLE HELPDESK.CHAMADO (
ID BIGINT PRIMARY KEY,
DESCRICAO VARCHAR(255),
DATAABERTURA DATETIME,
DATACONCLUSAO DATETIME,
GRAU INTEGER,
STATUS VARCHAR(12),
IDFUNCIONARIO BIGINT,
IDATENDIMENTO BIGINT
)
CREATE TABLE HELPDESK.FUNCIONARIO (
ID BIGINT PRIMARY KEY,
NOME VARCHAR(150),
TELEFONE VARCHAR(15),
EMAIL VARCHAR(150),
CARGO VARCHAR(100)
)
CREATE TABLE HELPDESK.ATENDENTE (
ID BIGINT PRIMARY KEY,
NOME VARCHAR(150),
TELEFONE VARCHAR(15),
EMAIL VARCHAR(150),
USUARIO VARCHAR(80),
SENHA VARCHAR(100),
FUNCAO VARCHAR(50),
IDLOGIN BIGINT
)
CREATE TABLE HELPDESK.ATENDIMENTO (
ID BIGINT PRIMARY KEY,
NOME VARCHAR(150),
TELEFONE VARCHAR(15),
EMAIL VARCHAR(150),
USUARIO VARCHAR(80),
IDDESENVOLVEDOR BIGINT,
IDINFRAESTRUTURA BIGINT,
IDHELP_DESK BIGINT
)
CREATE TABLE HELPDESK.LOGIN (
ID BIGINT PRIMARY KEY,
USUARIO VARCHAR(80),
SENHA VARCHAR(100)
)