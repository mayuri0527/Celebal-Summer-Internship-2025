CREATE DATABASE CompannyDB;
USE CompannyDB;

CREATE TABLE Employeee (
    employeee_id INT,
    name VARCHAR(50),
    months INT,
    salary INT
);


INSERT INTO Employeee VALUES (12228, 'Rose', 15, 1968);
INSERT INTO Employeee VALUES (33645, 'Angela', 1, 3443);
INSERT INTO Employeee VALUES (45692, 'Frank', 17, 1608);
INSERT INTO Employeee VALUES (56118, 'Patrick', 7, 1345);
INSERT INTO Employeee VALUES (59725, 'Lisa', 11, 2330);
INSERT INTO Employeee VALUES (74197, 'Kimberly', 16, 4372);
INSERT INTO Employeee VALUES (78454, 'Bonnie', 8, 1771);
INSERT INTO Employeee VALUES (83565, 'Michael', 6, 2017);
INSERT INTO Employeee VALUES (98607, 'Todd', 5, 3396);
INSERT INTO Employeee VALUES (99989, 'Joe', 9, 3573);

SELECT name
FROM Employeee
ORDER BY name;
