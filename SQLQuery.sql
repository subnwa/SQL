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

GO

.
