--USE DB_BIBLIOTECA;

/******* 
	SCALAR FUNCTIONS 
		- It's a scalar function because it returns only 1 value
********/
CREATE FUNCTION FN_LIVRO_CALCULA_VALOR_COMPRA 
(
	@ID SMALLINT,
	@QUANT INT
)
RETURNS MONEY
AS 
BEGIN
	DECLARE @TOTAL MONEY;

	SELECT @TOTAL = L.LVR_PRECO * @QUANT
	FROM TB_LIVRO L
	WHERE LVR_ID = @ID

	RETURN @TOTAL
END

SELECT dbo.FN_LIVRO_CALCULA_VALOR_COMPRA(102, 2)