CREATE DATABASE IF NOT EXISTS citydb;
USE citydb;
CREATE TABLE CITY (
    ID INT,
    NAME VARCHAR(17),
    COUNTRYCODE VARCHAR(3),
    DISTRICT VARCHAR(20),
    POPULATION INT
);
INSERT INTO CITY (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION) VALUES
(1, 'Mumbai', 'IND', 'Maharashtra', 12478447),
(2, 'Delhi', 'IND', 'Delhi', 11007835),
(3, 'Chennai', 'IND', 'Tamil Nadu', 4681087),
(4, 'Kolkata', 'IND', 'West Bengal', 4486679),
(5, 'Udaipur', 'IND', 'Rajasthan', 451735);
SELECT MAX(POPULATION) - MIN(POPULATION) AS PopulationDifference
FROM CITY;
