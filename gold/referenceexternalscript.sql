create master key ENCRYPTION BY PASSWORD ='your password'

CREATE DATABASE SCOPED CREDENTIAL cred_prissy
WITH IDENTITY = 'Managed Identity'
  

create external data source source_silver
WITH
(
    LOCATION='https://azdlk.dfs.core.windows.net/silver/',
    CREDENTIAL = cred_prissy
)

create external data source source_gold
WITH
(
    LOCATION='https://azdlk.dfs.core.windows.net/gold/',
    CREDENTIAL = cred_prissy
)

create external file format format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


create external table gold.extsales
WITH
(
LOCATION='extsales',
DATA_SOURCE = source_gold,
FILE_FORMAT = format_parquet
)AS
select * from gold.sales


select * from gold.extsales

