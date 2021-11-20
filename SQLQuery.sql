-- Create a new database called 'DatabaseMaster'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'DatabaseMaster'
)
CREATE DATABASE DatabaseMaster

-- Get a list of databases
SELECT [name] FROM sys.databases
NAMESPACE -- List columns in all tables whose name is like 'TableName'
SELECT 
    TableName = tbl.table_schema + '.' + tbl.table_name, 
    ColumnName = col.column_name, 
    ColumnDataType = col.data_type
FROM INFORMATION_SCHEMA.TABLES tbl
INNER JOIN INFORMATION_SCHEMA.COLUMNS col 
    ON col.table_name = tbl.table_name
    AND col.table_schema = tbl.table_schema

WHERE tbl.table_type = 'base table' and tbl.table_name like '%TableName%'

-- Get a list of tables and views in the current database
SELECT table_catalog [database], table_schema [schema], table_name [name], table_type [type]
FROM INFORMATION_SCHEMA.TABLES
GO
GO

.
.
