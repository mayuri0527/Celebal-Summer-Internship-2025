CREATE DATABASE IF NOT EXISTS stationdb;
USE stationdb;

CREATE TABLE IF NOT EXISTS STATION (
    ID INT,
    CITY VARCHAR(21),
    STATE VARCHAR(2),
    LAT_N FLOAT,
    LONG_W FLOAT
);

TRUNCATE TABLE STATION;
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES
(1, 'Alpha', 'AA', 10.0, 20.0),
(2, 'Beta', 'BB', 40.0, 50.0),
(3, 'Gamma', 'GG', 15.0, 30.0),
(4, 'Delta', 'DD', 25.0, 60.0);

SELECT ROUND(AVG(LAT_N), 4) AS Median_LAT_N
FROM (
    SELECT LAT_N
    FROM (
        SELECT LAT_N, @rownum := @rownum + 1 AS rn
        FROM STATION, (SELECT @rownum := 0) AS init
        ORDER BY LAT_N
    ) AS sorted
    WHERE rn IN (
        FLOOR((@cnt := (SELECT COUNT(*) FROM STATION) + 1) / 2),
        CEIL(@cnt / 2)
    )
) AS median_vals;
