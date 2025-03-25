Use nithim_db
create table Trainee_Skills
(
TraineeId int identity(100,1) not null,
Trainee_name varchar(50),
skillId int  not null,
Trainee_skill varchar(50),
constraint PF_TSSID primary key (TraineeId, skillId, Trainee_skill)
)

-- insert values 
insert into TraineeSkills(Trainee_name,Trainee_Skill)
values
('Prateek','Python'),
('Varsha', 'C#'),
('Prithiv','SQL');
--viewing table after updation
use nithim_db
select * from TraineeSkills

--deleting a particular data
delete from Trainee where Id=102


--inserting values
insert into Trainee values ('Mihir','SQL');

--deleting a table
drop table Trainee