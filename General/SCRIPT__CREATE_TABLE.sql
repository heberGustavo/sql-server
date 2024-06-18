USE DB_BIBLIOTECA;

CREATE TABLE TB_LIVRO 
(
	LVR_ID SMALLINT PRIMARY KEY IDENTITY(100,1) /*Inicia em 100, e incrementa de 1 em 1*/
	, LVR_NOME VARCHAR(50) NOT NULL
	, LVR_ISBN VARCHAR(30) NOT NULL UNIQUE
	, ATR_ID SMALLINT NOT NULL
	, LVR_DATA_PUB DATETIME NOT NULL
	, LVR_PRECO MONEY NOT NULL
)

CREATE TABLE TB_AUTOR
(
	ATR_ID SMALLINT PRIMARY KEY IDENTITY
	, ATR_NOME VARCHAR(50)
	, ATR_SOBRENOME VARCHAR(60)
)

CREATE TABLE TB_EDITORA
(
	EDT_ID SMALLINT PRIMARY KEY IDENTITY
	, EDT_NOME VARCHAR(50) NOT NULL
)