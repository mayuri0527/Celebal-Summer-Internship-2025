CREATE TABLE Students (
    ID INT,
    Name VARCHAR(50),
    Marks INT
);

CREATE TABLE Grades (
    Grade INT,
    Min_Mark INT,
    Max_Mark INT
);

INSERT INTO Students (ID, Name, Marks) VALUES
(1, 'Julia', 88),
(2, 'Samantha', 68),
(3, 'Maria', 99),
(4, 'Scarlet', 78),
(5, 'Ashley', 63),
(6, 'Jane', 81),
(7, 'Ketty', 59);

INSERT INTO Grades (Grade, Min_Mark, Max_Mark) VALUES
(1, 0, 9),
(2, 10, 19),
(3, 20, 29),
(4, 30, 39),
(5, 40, 49),
(6, 50, 59),
(7, 60, 69),
(8, 70, 79),
(9, 80, 89),
(10, 90, 100);

SELECT
    CASE 
        WHEN G.Grade < 8 THEN NULL
        ELSE S.Name
    END AS Name,
    G.Grade,
    S.Marks
FROM Students S
JOIN Grades G
  ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY
    G.Grade DESC,
    CASE 
        WHEN G.Grade < 8 THEN S.Marks
        ELSE NULL
    END ASC,
    S.Name ASC;

