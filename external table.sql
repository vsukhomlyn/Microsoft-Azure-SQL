-- ====================================================================
-- Create External Table Template for Azure SQL Data Warehouse Database
-- ====================================================================

CREATE EXTERNAL TABLE [v_sukhomlyn_schema].[externaltable]
(
	[VendorID] [int] NULL,
	[tpep_pickup_datetime] [datetime] NOT NULL,
	[tpep_dropoff_datetime] [datetime] NULL,
	[passenger_count] [int] NULL,
	[trip_distance] [real] NULL,
	[RatecodeID] [int] NULL,
	[store_and_fwd_flag] [char](1) NULL,
	[PULocationID] [int] NULL,
	[DOLocationID] [int] NULL,
	[payment_type] [int] NULL,
	[fare_amount] [real] NULL,
	[extra] [real] NULL,
	[mta_tax] [real] NULL,
	[tip_amount] [real] NULL,
	[tolls_amount] [real] NULL,
	[improvement_surcharge] [real] NULL,
	[total_amount] [real] NULL,
	[congestion_surcharge] [real] NULL
)
WITH
(
    LOCATION = N'yellow_tripdata_2020-01.csv',
    DATA_SOURCE = [VSukhomlynAzureStorage],
    FILE_FORMAT = [VSukhomlynFileFormat],
    REJECT_TYPE = VALUE,
    REJECT_VALUE = 0
)
GO