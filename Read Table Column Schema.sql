SELECT 
                       tb.TABLE_NAME AS 'TableName'
                      ,CASE 
                        WHEN tb.TABLE_TYPE = 'VIEW'
                        THEN (SELECT value 
                                FROM sys.fn_listextendedproperty(NULL, 'user', 'dbo', 'view', tb.TABLE_NAME, DEFAULT, DEFAULT)
                                WHERE name = 'MS_Description'
                                AND objtype = 'VIEW')
                        ELSE (SELECT value 
                                FROM sys.fn_listextendedproperty(NULL, 'user', 'dbo', 'table', tb.TABLE_NAME, DEFAULT, DEFAULT)
                                WHERE name = 'MS_Description'
                                AND objtype = 'TABLE')
                       END AS 'TableDescription'
                      ,tb.TABLE_TYPE AS 'TableType'
                      ,col.ORDINAL_POSITION AS 'No'
                      ,col.COLUMN_NAME AS 'ColumnName'
                      ,col.DATA_TYPE AS 'DataType'
                      ,CASE 
                        WHEN col.CHARACTER_MAXIMUM_LENGTH = -1
                          THEN 'MAX' 
                          ELSE LTRIM(STR(col.CHARACTER_MAXIMUM_LENGTH,10))
                       END AS 'Length'
                      ,col.NUMERIC_SCALE AS 'NumericScale'
                      ,col.NUMERIC_PRECISION AS 'NumericPrecision'
                      ,col.COLUMN_DEFAULT AS 'Default'
                      ,col.IS_NULLABLE AS 'Nullable'   
                      ,CASE 
                        WHEN COLUMNPROPERTY(object_id(tb.TABLE_NAME), col.COLUMN_NAME, 'IsIdentity') = 1  
                          THEN 'YES' 
                          ELSE 'NO' 
                       END AS 'Identity'  
                      ,(SELECT value
                          FROM sys.fn_listextendedproperty(NULL, 'schema', 'dbo', 'table', tb.TABLE_NAME, 'column', DEFAULT)
                          WHERE name = 'MS_Description'
                          AND objtype = 'COLUMN'
                          AND objname COLLATE Chinese_Taiwan_Stroke_CI_AS = col.COLUMN_NAME) AS 'Description'
                      ,CASE 
                        WHEN tbc.CONSTRAINT_NAME is not null  
                          THEN 'YES' 
                          ELSE 'NO' 
                       END AS 'PK' 
                      ,tbc.CONSTRAINT_NAME AS ' PkConstraint' 
                      ,CASE 
                        WHEN kcu1.CONSTRAINT_NAME is not null  
                          THEN 'YES' 
                          ELSE 'NO' 
                       END AS 'FK'  
                      ,kcu1.CONSTRAINT_NAME AS ' FkConstraint'
                      ,kcu2.TABLE_NAME AS 'FkReferencedTable' 
                      ,kcu2.COLUMN_NAME AS 'FkReferencedColumn'

                  FROM 

                  INFORMATION_SCHEMA.TABLES tb
                  LEFT JOIN INFORMATION_SCHEMA.COLUMNS col ON (tb.TABLE_NAME = col.TABLE_NAME)
                  LEFT JOIN
                  (
                    INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS AS rc 
                    INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS kcu1 
                      ON kcu1.CONSTRAINT_CATALOG = rc.CONSTRAINT_CATALOG  
                      AND kcu1.CONSTRAINT_SCHEMA = rc.CONSTRAINT_SCHEMA 
                      AND kcu1.CONSTRAINT_NAME = rc.CONSTRAINT_NAME 
                    INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS kcu2 
                      ON kcu2.CONSTRAINT_CATALOG = rc.UNIQUE_CONSTRAINT_CATALOG  
                      AND kcu2.CONSTRAINT_SCHEMA = rc.UNIQUE_CONSTRAINT_SCHEMA 
                      AND kcu2.CONSTRAINT_NAME = rc.UNIQUE_CONSTRAINT_NAME 
                      AND kcu2.ORDINAL_POSITION = kcu1.ORDINAL_POSITION 
                  ) ON (tb.TABLE_NAME = kcu1.TABLE_NAME AND col.COLUMN_NAME = kcu1.COLUMN_NAME)
                  LEFT JOIN
                  (
                    INFORMATION_SCHEMA.TABLE_CONSTRAINTS AS tbc
                    INNER JOIN INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS colc 
                    ON  colc.CONSTRAINT_NAME = tbc.CONSTRAINT_NAME
                    AND colc.TABLE_NAME = tbc.TABLE_NAME
                    AND tbc.CONSTRAINT_TYPE = 'PRIMARY KEY' 
                  )  ON (tb.TABLE_NAME = tbc.TABLE_NAME AND col.COLUMN_NAME = colc.COLUMN_NAME)
                  --where 
                  --tb.TABLE_TYPE = 'BASE TABLE'
                  --tb.TABLE_NAME = 'SSO_ACTIVE_USER' 
                  ORDER BY tb.TABLE_NAME, col.ORDINAL_POSITION  