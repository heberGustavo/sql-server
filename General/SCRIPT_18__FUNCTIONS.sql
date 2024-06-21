--USE DB_BIBLIOTECA;

/******* 
	SCALAR FUNCTIONS 
		- It's a scalar function because it returns only 1 value
********/
--CREATE FUNCTION FN_LIVRO_CALCULA_VALOR_COMPRA 
--(
--	@ID SMALLINT,
--	@QUANT INT
--)
--RETURNS MONEY
--AS 
--BEGIN
--	DECLARE @TOTAL MONEY;

--	SELECT @TOTAL = L.LVR_PRECO * @QUANT
--	FROM TB_LIVRO L
--	WHERE LVR_ID = @ID

--	RETURN @TOTAL
--END

--SELECT dbo.FN_LIVRO_CALCULA_VALOR_COMPRA(102, 2)





/******* FUNCTION WITH RETURN OF TABLE ********/
CREATE FUNCTION FN_LIVRO_AUTOR_ITEMS
(
	@PRECO_LIVRO MONEY
)
RETURNS TABLE 
AS 
RETURN (
	SELECT L.LVR_NOME, A.ATR_NOME, L.LVR_PRECO
	FROM TB_LIVRO L
	INNER JOIN TB_AUTOR A ON A.ATR_ID = L.ATR_ID
	WHERE L.LVR_PRECO >= @PRECO_LIVRO
)

SELECT *
FROM dbo.FN_LIVRO_AUTOR_ITEMS(60)
