--USE DB_BIBLIOTECA;

/******** SELECT VALUES 1 ********/
--CREATE PROCEDURE PR_LIVRO_VALOR
--(
--	@ID SMALLINT
--)
--AS
--BEGIN
--	SELECT *
--	FROM TB_LIVRO
--	WHERE LVR_ID = @ID
--END

--EXEC PR_LIVRO_VALOR 103




/******** SELECT VALUES 2 ********/
--ALTER PROCEDURE PR_LIVRO_VALOR
--(
--	@NOME_LIVRO VARCHAR(100)
--	, @DATA_PUB DATETIME
--)
--AS
--BEGIN
--	SELECT *
--	FROM TB_LIVRO
--	WHERE 
--		LVR_NOME LIKE '%'+@NOME_LIVRO+'%'
--		AND LVR_DATA_PUB >= @DATA_PUB
--END

-- Show values
--DECLARE @DATE DATETIME = CAST('01-01-2004' AS DATETIME);
--EXEC PR_LIVRO_VALOR 'S', @DATE


-- Send values by name 
--DECLARE @DATE_2 DATETIME = CAST('01-01-2004' AS DATETIME);
--EXEC PR_LIVRO_VALOR @DATA_PUB = @DATE_2, @NOME_LIVRO = 'S'




/******** INSERT VALUES ********/
--CREATE PROCEDURE PR_EDITORA_INSERIR 
--(
--	@EDT_NOME VARCHAR(50)
--)
--AS 
--BEGIN 
--	INSERT INTO TB_EDITORA (EDT_NOME) VALUES (@EDT_NOME)
--END

--EXEC PR_EDITORA_INSERIR 'My name example'
--SELECT * FROM TB_EDITORA 




/******** DEFAULT VALUES ********/
--CREATE PROCEDURE PR_TEST_DEFAULT_VALUES
--(
--	@PARAM_1 INT,
--	@PARAM_2 VARCHAR(20) = 'I am default!'
--) AS 
--BEGIN
--	SELECT 'Value param 1: ' + CAST(@PARAM_1 AS VARCHAR(5))
--	SELECT 'Value param 2: ' + @PARAM_2
--END

--EXEC PR_TEST_DEFAULT_VALUES @PARAM_2 = 'Not default', @PARAM_1 = 15



/******** OUTPUT PARAMETER ********/
CREATE PROCEDURE PR_TEST_OUTPUT
(
	@PARAM_1 INT OUTPUT
) AS 
BEGIN
	SELECT @PARAM_1 * 2
	RETURN
END

DECLARE @VALUE INT = 15;
EXEC PR_TEST_OUTPUT @VALUE OUTPUT