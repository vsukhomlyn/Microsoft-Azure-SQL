-- ===========================================================
-- Create Table Template for Azure SQL Data Warehouse Database
-- ===========================================================

CREATE TABLE [v_sukhomlyn_schema].[Vendor]
(
    [VendorID] [int] NULL,
    [VendorName] [varchar](50) NULL	
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
)

INSERT INTO [v_sukhomlyn_schema].[Vendor]
SELECT DISTINCT [VendorID],
CASE
	WHEN [VendorID] = '1' THEN 'Creative Mobile Technologies'
	WHEN [VendorID] = '2'THEN 'VeriFone Inc.' 
END

FROM [v_sukhomlyn_schema].[externaltable]
WHERE [VendorID] IN (1,2)