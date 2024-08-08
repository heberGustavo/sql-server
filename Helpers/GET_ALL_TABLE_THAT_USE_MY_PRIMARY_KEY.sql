--- ***** MODELO PARA MOSTRAR TODAS AS TABELAS QUE USAM MINHA PRIMARY_KEY *****

SELECT 
    FK.name AS ForeignKeyName,
    TP.name AS ParentTableName,
    CP.name AS ParentColumnName,
    TR.name AS ReferencedTableName,
    CR.name AS ReferencedColumnName
FROM 
    sys.foreign_keys AS FK
INNER JOIN 
    sys.foreign_key_columns AS FKC ON FK.object_id = FKC.constraint_object_id
INNER JOIN 
    sys.tables AS TP ON FKC.parent_object_id = TP.object_id
INNER JOIN 
    sys.columns AS CP ON FKC.parent_object_id = CP.object_id AND FKC.parent_column_id = CP.column_id
INNER JOIN 
    sys.tables AS TR ON FKC.referenced_object_id = TR.object_id
INNER JOIN 
    sys.columns AS CR ON FKC.referenced_object_id = CR.object_id AND FKC.referenced_column_id = CR.column_id
WHERE 
    TR.name = 'TB_INDICADORES_CONSOLIDACOES';
