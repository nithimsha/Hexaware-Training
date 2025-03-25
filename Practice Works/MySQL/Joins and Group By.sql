USE nithim_db;

CREATE TABLE Skills (
    Skill_Id INT PRIMARY KEY,
    Trainee_skill VARCHAR(50) UNIQUE
);

INSERT INTO Skills (Skill_Id, Trainee_skill)
SELECT DISTINCT Skill_Id, Trainee_skill FROM TraineeSkills;

select * from skills
select * from Trainees


CREATE TABLE Trainees (
    Trainee_Id INT PRIMARY KEY,
    Trainee_name VARCHAR(50)
);

INSERT INTO Trainees (Trainee_Id, Trainee_name)
SELECT DISTINCT Trainee_Id, Trainee_name FROM TraineeSkills;

select * from Trainees

CREATE TABLE TraineeSkillMapping (
    Trainee_Id INT,
    Skill_Id INT,
    PRIMARY KEY (Trainee_Id, Skill_Id),
    FOREIGN KEY (Trainee_Id) REFERENCES Trainees(Trainee_Id),
    FOREIGN KEY (Skill_Id) REFERENCES Skills(Skill_Id)
);

INSERT INTO TraineeSkillMapping (Trainee_Id, Skill_Id)
SELECT Trainee_Id, Skill_Id FROM TraineeSkills;

SELECT s.Skill_Id, s.Trainee_skill, 
       SUM(1) AS EnrolledTrainees
FROM Skills s
LEFT JOIN TraineeSkillMapping tsm ON s.Skill_Id = tsm.Skill_Id
GROUP BY s.Skill_Id, s.Trainee_skill;