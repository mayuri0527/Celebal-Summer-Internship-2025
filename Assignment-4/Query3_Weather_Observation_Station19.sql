CREATE DATABASE IF NOT EXISTS stationdb;
USE stationdb;
CREATE TABLE STATION (
    ID INT,
    CITY VARCHAR(21),
    STATE VARCHAR(2),
    LAT_N FLOAT,
    LONG_W FLOAT
);
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES
(1, 'Alpha', 'AA', 10.0, 20.0),
(2, 'Beta', 'BB', 40.0, 50.0),
(3, 'Gamma', 'GG', 15.0, 30.0),
(4, 'Delta', 'DD', 25.0, 60.0);
SELECT 
  ROUND(
    SQRT(
      POW(MAX(LAT_N) - MIN(LAT_N), 2) +
      POW(MAX(LONG_W) - MIN(LONG_W), 2)
    ), 4
  ) AS EuclideanDistance
FROM STATION;

