-- ========================================================================================
-- Create User as DBO template for Azure SQL Database and Azure SQL Data Warehouse Database
-- ========================================================================================
-- For login <login_name, sysname, login_name>, create a user in the database
CREATE USER [v_sukhomlyn]
	FOR LOGIN [v_sukhomlyn]
	WITH DEFAULT_SCHEMA = [v_sukhomlyn_schema]
GO