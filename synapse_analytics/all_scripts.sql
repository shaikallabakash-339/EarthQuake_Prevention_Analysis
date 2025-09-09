CREATE EXTERNAL TABLE earthquake.silver_spring_city
WITH (
    DATA_SOURCE = source_gold,
    LOCATION = 'Silver Spring City',
    FILE_FORMAT = format_parquet
)
AS 
SELECT * FROM earthquake.view_silver_spring_city;

SELECT * FROM earthquake.silver_spring_city;

CREATE EXTERNAL TABLE earthquake.another_city
WITH (
    DATA_SOURCE = source_gold,
    LOCATION = 'Another City',
    FILE_FORMAT = format_parquet
)
AS 
SELECT * FROM earthquake.view_Another_city