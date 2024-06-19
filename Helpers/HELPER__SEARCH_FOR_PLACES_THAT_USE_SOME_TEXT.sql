-- ***** Search for places that use some text *****
 
SELECT A.NAME, A.TYPE, B.TEXT
  FROM SYSOBJECTS  A (nolock) JOIN SYSCOMMENTS B (nolock) ON A.ID = B.ID
WHERE 
	B.TEXT LIKE '%TB_LIVRO%'  --- Information to be looked for in the body of the procedure, function or view
	AND A.TYPE = 'P'          --- Type of object to be located in the procedure case
ORDER BY A.NAME
GO