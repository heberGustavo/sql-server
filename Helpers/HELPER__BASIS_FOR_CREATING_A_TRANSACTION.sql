DECLARE @SUCESS INT = 1

BEGIN TRANSACTION 
BEGIN TRY  

	/********* ADD YOUR SQL *********/
	
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	SET @SUCESS = 0

	SELECT ERROR_NUMBER() AS ErrorNumber,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH

IF(@SUCESS = 1)
BEGIN
    COMMIT TRANSACTION
END
GO