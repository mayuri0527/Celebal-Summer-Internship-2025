CREATE DATABASE IF NOT EXISTS hacker_challenges;
USE hacker_challenges;

DROP TABLE IF EXISTS Submissions;
DROP TABLE IF EXISTS Challenges;
DROP TABLE IF EXISTS Difficulty;
DROP TABLE IF EXISTS Hackers;

CREATE TABLE Hackers (
    hacker_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Difficulty (
    difficulty_level VARCHAR(10) PRIMARY KEY,
    score INT
);

CREATE TABLE Challenges (
    challenge_id INT PRIMARY KEY,
    difficulty_level VARCHAR(10),
    FOREIGN KEY (difficulty_level) REFERENCES Difficulty(difficulty_level)
);

CREATE TABLE Submissions (
    submission_id INT PRIMARY KEY,
    hacker_id INT,
    challenge_id INT,
    score INT,
    FOREIGN KEY (hacker_id) REFERENCES Hackers(hacker_id),
    FOREIGN KEY (challenge_id) REFERENCES Challenges(challenge_id)
);

INSERT INTO Hackers (hacker_id, name) VALUES
(90411, 'Joe'),
(84072, 'Rose'),
(30012, 'Tom'),
(20056, 'Jane');

INSERT INTO Difficulty (difficulty_level, score) VALUES
('Easy', 50),
('Medium', 70),
('Hard', 100);

INSERT INTO Challenges (challenge_id, difficulty_level) VALUES
(101, 'Easy'),
(102, 'Medium'),
(103, 'Easy'),
(104, 'Hard'),
(105, 'Medium');


INSERT INTO Submissions (submission_id, hacker_id, challenge_id, score) VALUES
(1, 90411, 101, 50),  
(2, 90411, 102, 70),   
(3, 90411, 103, 30),   
(4, 84072, 101, 50),  
(5, 84072, 103, 50),  
(6, 30012, 104, 100),  
(7, 20056, 105, 70);  

SELECT 
    s.hacker_id, 
    h.name
FROM 
    Submissions s
JOIN 
    Challenges c ON s.challenge_id = c.challenge_id
JOIN 
    Difficulty d ON c.difficulty_level = d.difficulty_level
JOIN 
    Hackers h ON s.hacker_id = h.hacker_id
WHERE 
    s.score = d.score
GROUP BY 
    s.hacker_id, h.name
HAVING 
    COUNT(DISTINCT s.challenge_id) > 1
ORDER BY 
    COUNT(DISTINCT s.challenge_id) DESC,
    s.hacker_id ASC;
