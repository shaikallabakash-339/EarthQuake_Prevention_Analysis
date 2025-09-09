DROP VIEW earthquake.view_silver_spring_city
CREATE VIEW earthquake.view_silver_spring_city
AS 
SELECT 
    *
FROM 
    OPENROWSET(
        BULK 'https://earthquakeadls.blob.core.windows.net/silver/Silver Springs_city',
        FORMAT ='PARQUET'
    ) AS Quer1

SELECT * FROM earthquake.view_silver_spring_city;

CREATE VIEW earthquake.view_Another_city
AS 
SELECT 
    *
FROM 
    OPENROWSET(
        BULK 'https://earthquakeadls.blob.core.windows.net/silver/Another_city',
        FORMAT ='PARQUET'
    ) AS Quer1

SELECT * FROM earthquake.view_Another_city;