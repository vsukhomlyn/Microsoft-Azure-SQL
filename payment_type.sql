-- ===========================================================
-- Create Table Template for Azure SQL Data Warehouse Database
-- ===========================================================

CREATE TABLE [v_sukhomlyn_schema].[Payment_type]
(
    [payment_type] [int] NULL,
    [payment_typeName] [varchar](50) NULL	
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
)

INSERT INTO [v_sukhomlyn_schema].[payment_type]
SELECT DISTINCT [payment_type],
CASE
	WHEN [payment_type] = '1' THEN 'Credit card'
	WHEN [payment_type] = '2'THEN 'Cash'
	WHEN [payment_type] = '3'THEN 'No charge'
	WHEN [payment_type] = '4'THEN 'Dispute'
	WHEN [payment_type] = '5'THEN 'Unknown'
	WHEN [payment_type] = '6'THEN 'Voided trip'
END

FROM [v_sukhomlyn_schema].[externaltable]
WHERE [payment_type] IN (1,2,3,4,5,6)