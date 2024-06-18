USE DB_BIBLIOTECA;

INSERT INTO TB_AUTOR (ATR_NOME, ATR_SOBRENOME)
VALUES
('Daniel', 'Barret'),
('Gerald', 'Carter'),
('Mark', 'Sobell'),
('William', 'Stanek'),
('Richard', 'Blum');

INSERT INTO TB_EDITORA (EDT_NOME)
VALUES
('Prentice Hall'),
('O´Reilly'),
('Microsoft Press'),
('Wiley');

INSERT INTO TB_LIVRO (LVR_NOME, LVR_ISBN, LVR_DATA_PUB, LVR_PRECO, ATR_ID, EDT_ID)
VALUES
('Linux Command Line and Shell Scripting','143856969','20091221', 68.35, 5, 4),
('SSH, the Secure Shell','127658789','20091221', 58.30, 1, 2),
('Using Samba','123856789','20001221', 61.45, 2, 2),
('Fedora and Red Hat Linux','123346789', '20101101', 62.24, 3, 1),
('Windows Server 2012 Inside Out','123356789','20040517', 66.80, 4, 3),
('Microsoft Exchange Server 2010','123366789','20001221', 45.30, 4, 3);