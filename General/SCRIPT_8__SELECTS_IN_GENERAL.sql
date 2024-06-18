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