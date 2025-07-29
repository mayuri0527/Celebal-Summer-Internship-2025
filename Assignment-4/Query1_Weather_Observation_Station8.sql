CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
CREATE TABLE STATION (
    ID INT,
    CITY VARCHAR(21),
    STATE VARCHAR(2),
    LAT_N FLOAT,
    LONG_W FLOAT
);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES
(1, 'Alameda', 'CA', 37.76, -122.27),
(2, 'Indianola', 'IA', 41.36, -93.56),
(3, 'Orlando', 'FL', 28.54, -81.38),
(4, 'Eagle', 'ID', 43.66, -116.35),
(5, 'Udupi', 'KA', 13.33, 74.75),
(6, 'Chicago', 'IL', 41.87, -87.62),
(7, 'Atlanta', 'GA', 33.74, -84.39);
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u')
  AND LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');
