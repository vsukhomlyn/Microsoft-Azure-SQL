-- ===========================================================
-- Create Table Template for Azure SQL Data Warehouse Database
-- ===========================================================

CREATE TABLE [v_sukhomlyn_schema].[fact_tripdata]

WITH
(
    DISTRIBUTION = HASH ( [tpep_pickup_datetime] ),
    CLUSTERED COLUMNSTORE INDEX
)
AS SELECT * FROM [v_sukhomlyn_schema].[externaltable]