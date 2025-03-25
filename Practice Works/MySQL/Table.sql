Use nithim_db
create table TraineeSkills
(
Trainee_Id int identity(100,1) not null,
Trainee_name varchar(50),
skill_Id int  not null,
Trainee_skill varchar(50),
constraint PF_TSSID primary key (Trainee_Id, skill_Id, Trainee_skill)
)

-- insert values 
insert into TraineeSkills(Trainee_name,skill_id,Trainee_skill)
values
('Nithim',2001,'Python'),
('Santo', 2002,'C#'),
('Arun',2003,'SQL'),
('Sedu',2003,'SQL'),
('Loki',2002,'C#'),
('AAdi',2001,'Python'),
('Rethina',2004,'AWS');
