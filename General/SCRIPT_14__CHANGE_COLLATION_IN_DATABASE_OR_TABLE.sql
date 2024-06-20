USE DB_BIBLIOTECA;

/*
	COLLATION: 
		Link helper: https://collation-charts.org/mssql/
*/
-- To see all collations
SELECT * FROM fn_helpcollations() WHERE name LIKE 'Latin1_General_CI_%'

--To see my collations in server
SELECT SERVERPROPERTY('Collation')

--To see my collations in Database
SELECT DATABASEPROPERTYEX('DB_BIBLIOTECA', 'Collation');

--To change colllation
--Current: Latin1_General_CI_AS
--New: Greek_100_CS_AI_WS_SC
ALTER DATABASE DB_BIBLIOTECA COLLATE Greek_100_CS_AI_WS_SC --In this database isn't possible change, because we have a dependency in a specific table

--To change collation in a specific collumn
SELECT * FROM TB_LIVRO ORDER BY LVR_NOME COLLATE Greek_100_CS_AI_WS_SC
