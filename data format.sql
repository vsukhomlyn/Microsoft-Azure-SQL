-- ==========================================================================
-- Create external file format template for Azure SQL Data Warehouse Database 
-- ==========================================================================

CREATE EXTERNAL FILE FORMAT [VSukhomlynFileFormat] WITH
(
	FORMAT_TYPE = DELIMITEDTEXT,
	FORMAT_OPTIONS 
	(
		FIELD_TERMINATOR = N',',
		DATE_FORMAT = N'yyyy-MM-dd HH:mm:ss',
		USE_TYPE_DEFAULT = False,
		FIRST_ROW = 2  -- Optional property
	)
)
GO