-- ==========================================================================
-- Create external data source template for Azure SQL Data Warehouse Database 
-- ==========================================================================

-- Create a database scoped credential with Azure storage account key as the secret.
CREATE DATABASE SCOPED CREDENTIAL VSukhomlynAzureStorageCredential
WITH
  IDENTITY = 'bgdataschoolstr01' ,
  SECRET = 'hide' ;

-- Create an external data source with CREDENTIAL option.
CREATE EXTERNAL DATA SOURCE VSukhomlynAzureStorage
WITH
  ( LOCATION = 'wasbs://yellow-tripdata@bgdataschoolstr01.blob.core.windows.net/' ,
    CREDENTIAL = VSukhomlynAzureStorageCredential,
    TYPE = HADOOP
  ) ;
GO