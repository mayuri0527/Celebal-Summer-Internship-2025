CREATE DATABASE IF NOT EXISTS CityDB;
USE CityDB;

CREATE TABLE IF NOT EXISTS CITY (
    ID INT PRIMARY KEY,
    NAME VARCHAR(17),
    COUNTRYCODE VARCHAR(3),
    DISTRICT VARCHAR(20),
    POPULATION INT
);


INSERT INTO CITY (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION) VALUES
(1, 'New York', 'USA', 'New York', 8175133),
(2, 'Los Angeles', 'USA', 'California', 3792621),
(3, 'Chicago', 'USA', 'Illinois', 2695598),
(4, 'Houston', 'USA', 'Texas', 2129784),
(5, 'Phoenix', 'USA', 'Arizona', 1445632),
(6, 'Philadelphia', 'USA', 'Pennsylvania', 1547607),
(7, 'San Antonio', 'USA', 'Texas', 1327407);


-- Create the database
CREATE DATABASE IF NOT EXISTS CityDB;
USE CityDB;

-- Create the CITY table
CREATE TABLE IF NOT EXISTS CITY (
    ID INT PRIMARY KEY,
    NAME VARCHAR(17),
    COUNTRYCODE VARCHAR(3),
    DISTRICT VARCHAR(20),
    POPULATION INT
);

-- Insert sample data
INSERT INTO CITY (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION) VALUES
(1, 'New York', 'USA', 'New York', 8175133),
(2, 'Los Angeles', 'USA', 'California', 3792621),
(3, 'Chicago', 'USA', 'Illinois', 2695598),
(4, 'Houston', 'USA', 'Texas', 2129784),
(5, 'Phoenix', 'USA', 'Arizona', 1445632),
(6, 'Philadelphia', 'USA', 'Pennsylvania', 1547607),
(7, 'San Antonio', 'USA', 'Texas', 1327407);


SELECT FLOOR(AVG(POPULATION)) AS AveragePopulation FROM CITY;

