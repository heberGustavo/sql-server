USE DB_BIBLIOTECA;

SELECT * 
INTO TB_LIVRO_RESULT_EXAMPLE
FROM TB_LIVRO L
WHERE L.LVR_ID > 103

SELECT * FROM TB_LIVRO_RESULT_EXAMPLE
--DROP TABLE TB_LIVRO_RESULT_EXAMPLE