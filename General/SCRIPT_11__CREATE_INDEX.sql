USE DB_BIBLIOTECA;

/*
	INDEX
		- Just to create INDEX in table that receive many queries. Indexed tables take longer to update.
	EXAMPLE:
		CREATE INDEX name_of_index ON name_of_table(column)
*/

CREATE INDEX INX_NOME_LIVRO ON TB_LIVRO(LVR_NOME)