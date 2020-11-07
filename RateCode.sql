-- ===========================================================
-- Create Table Template for Azure SQL Data Warehouse Database
-- ===========================================================

CREATE TABLE [v_sukhomlyn_schema].[RateCode]
(
    [RateCodeID] [int] NULL,
    [RateCodeName] [varchar](50) NULL	
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
)

INSERT INTO [v_sukhomlyn_schema].[RateCode]
SELECT DISTINCT [RatecodeID],
CASE
	WHEN [RatecodeID] = '1' THEN 'Standard rate'
	WHEN [RatecodeID] = '2'THEN 'JFK'
	WHEN [RatecodeID] = '3'THEN 'Newark'
	WHEN [RatecodeID] = '4'THEN 'Nassau or Westchester'
	WHEN [RatecodeID] = '5'THEN 'Negotiated fare'
	WHEN [RatecodeID] = '6'THEN 'Group ride'
END

FROM [v_sukhomlyn_schema].[externaltable]
WHERE [RatecodeID] IN (1,2,3,4,5,6)