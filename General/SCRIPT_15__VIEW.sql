USE DB_BIBLIOTECA;

/*
	VIEW 
		- Can be to used as a component
			- For example: I have a code that I can use in various places, so I could create a View and use it everywhere I need it
*/

--To create a new View
CREATE VIEW vw_LivrosAutores AS 
SELECT L.LVR_NOME, A.ATR_NOME
FROM TB_LIVRO L 
INNER JOIN TB_AUTOR A ON A.ATR_ID = L.ATR_ID

SELECT * FROM vw_LivrosAutores WHERE LVR_NOME LIKE 'S%'


--To alter the same View
ALTER VIEW vw_LivrosAutores AS 
SELECT L.LVR_NOME, A.ATR_NOME, L.LVR_PRECO
FROM TB_LIVRO L 
INNER JOIN TB_AUTOR A ON A.ATR_ID = L.ATR_ID

SELECT * FROM vw_LivrosAutores


--To delete View
--DROP VIEW vw_LivrosAutores