USE DB_BIBLIOTECA;

/*
	CREATE BACKUP
		- It's necessary to create a folder. Exemple: 'C:\test_backup'
*/

BACKUP DATABASE DB_BIBLIOTECA 
TO DISK = 'C:\test_backup\test.bak';
GO

/*
	RESTORE DATABASE
		1. Press F8, to open Object Explorer
		2. Right click on 'Database'
		3. Click 'Restore Database'
		4. Click 'Device' and select backup -> 'C:\test_backup\test.bak';
		5. If you didn't delete the Database DB_BIBLIOTECA, in 'Destination > Database' change name to for example: 'DB_BIBLIOTECA_2' and click 'OK'
*/

--TEST
--USE DB_BIBLIOTECA_2;
--SELECT * FROM TB_AUTOR