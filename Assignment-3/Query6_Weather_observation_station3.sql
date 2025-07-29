CREATE DATABASE IF NOT EXISTS StationDB;
USE StationDB;

CREATE TABLE STATION (
    ID INT,
    CITY VARCHAR(21),
    STATE VARCHAR(2),
    LAT_N DOUBLE,
    LONG_W DOUBLE
);

INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W) VALUES
(1, 'New York', 'NY', 40.7128, 74.0060),
(2, 'Los Angeles', 'CA', 34.0522, 118.2437),
(3, 'Chicago', 'IL', 41.8781, 87.6298),
(4, 'Houston', 'TX', 29.7604, 95.3698),
(5, 'Phoenix', 'AZ', 33.4484, 112.0740),
(6, 'Philadelphia', 'PA', 39.9526, 75.1652),
(2, 'Los Angeles', 'CA', 34.0522, 118.2437); -- duplicate city with even ID

SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;
