/*  
 * HOW TO ENABLE DARK MODE IN SSMS?

1- Go to the below path: C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\

2- Modify the below file in Administrator mode. If you are using notepad++, you can launch it in admin mode. File name: ssms.pkgundef

3- Search for Dark and add // in front of the below line to comment and save the file.
[$RootKey$\Themes{1ded0138-47ce-435e-84ef-9ec1f439b749}]

4- Open SSMS => Tools => Options => Environment => General => Color theme and choose dark theme.

5- Restart the SSMS.

Link: https://blog.rajanand.org/how-to-enable-dark-mode-in-ssms

*/
