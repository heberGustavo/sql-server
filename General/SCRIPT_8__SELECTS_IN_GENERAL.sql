USE DB_BIBLIOTECA;

/******* Simple *******/
SELECT * FROM TB_LIVRO

/******* Ordering the data *******/
SELECT * 
FROM TB_LIVRO
ORDER BY LVR_ID DESC 

/******* With WHERE *******/
SELECT *
FROM TB_LIVRO
WHERE LVR_NOME = 'Using Samba'

SELECT *
FROM TB_LIVRO
WHERE LVR_NOME LIKE '%Linux%'

/******* WHERE with AND or OR*******/
SELECT *
FROM TB_LIVRO
WHERE LVR_NOME LIKE '%Linux%' AND LVR_PRECO > 63

/******* TOP *******/
SELECT TOP 3 * FROM TB_LIVRO

/******* ALIAS *******/
SELECT 
	LVR_ID AS MEU_ID
	, LVR_NOME AS NOME_LIVRO
	, LVR_DATA_PUB AS 'DATA DA PUBLICAÇÃO'
FROM TB_LIVRO