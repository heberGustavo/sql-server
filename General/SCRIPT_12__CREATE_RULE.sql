/* 
	NOTE: 
		- It's necessary to execute one item at a time
*/

--USE DB_BIBLIOTECA;

--Create a general rule
--CREATE RULE RL_PRECO AS @VALOR > 10.00;

--Add rule to TB_LIVRO
--EXECUTE SP_BINDRULE RL_PRECO, 'TB_LIVRO.LVR_PRECO'


/*TEST*/
--UPDATE TB_LIVRO SET LVR_PRECO = 10.99 WHERE LVR_ID = 108
--SELECT * FROM TB_LIVRO
