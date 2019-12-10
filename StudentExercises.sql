/*SQL
CREATE TABLE statements- create table and columns
Put foreign key in CONSTRAINT
INSERT statements to create data in tables*/
--CREATE TABLE Cohort (
--    Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
--   Name varchar(50),
--);


--CREATE TABLE Student (
--    FirstName varchar(55),
--    LastName varchar(55),
--   SlackHandle varchar(55),
--    CohortId int, 
--   Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
--   CONSTRAINT FK_Student_Cohort FOREIGN KEY (CohortId) REFERENCES Cohort(Id),
  
--);

--CREATE TABLE Instructor (
--    FirstName varchar(50),
--    LastName varchar(50),
--    SlackHandle varchar(50),
--    CohortId int FOREIGN KEY REFERENCES Cohort(Id),
--    Specialty varchar(50),
--    Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
--);

CREATE TABLE Exercise (
    Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name varchar(50),
    Language varchar(50),
);
  
  
CREATE TABLE StudentExercise (
    StudentId int FOREIGN KEY REFERENCES Student(Id) ,
    ExerciseId int FOREIGN KEY REFERENCES Exercise(Id),
    Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
);

/*Populate each table with data. 
You should have 2-3 cohorts, 5-10 students,
4-8 instructors, 2-5 exercises
and each student should be assigned 1-2 exercises.
*/

--INSERT INTO Cohort (Name)
--VALUES ('Cohort36');

--INSERT INTO Cohort (Name)
--VALUES ('Cohort35');

--INSERT INTO Cohort (Name)
--VALUES ('Cohort34');

--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
--VALUES ('Heidi', 'Smith', 'hspradlin8', 2);

--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
--VALUES ('Sage', 'Klein', 'sageK', 1);

--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
--VALUES ('Aryn', 'Weatherly', 'arynW', 3);

--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
--VALUES ('Dylan', 'Griffith', 'dylanG', 2);

--INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
--VALUES ('Lauren', 'Maxwell', 'laurenM', 1);

--INSERT INTO Instructor(FirstName, LastName, SlackHandle, CohortId, Specialty)
--VALUES ('Adam', 'Sheaffer', 'adamS', 3, 'IceCream');

--INSERT INTO Instructor(FirstName, LastName, SlackHandle, CohortId, Specialty)
--VALUES ('Madi', 'Peper', 'madiP', 2, 'RockClimbing');

--INSERT INTO Instructor(FirstName, LastName, SlackHandle, CohortId, Specialty)
--VALUES ('Mo', 'Silvera', 'moS', 2, 'JavaScript');

--INSERT INTO Instructor(FirstName, LastName, SlackHandle, CohortId, Specialty)
--VALUES ('Brenda', 'Long', 'brendaL', 1, 'UIUX');

--INSERT INTO Exercise (name, Language)
--VALUES ('StudentExercise', 'CSharp');

--INSERT INTO Exercise (name, Language)
--VALUES ('DogKennel', 'ReactJS');

--INSERT INTO Exercise (name, Language)
--VALUES ('WelcomeToNashville', 'JavaScript');

--INSERT INTO StudentExercise (StudentId, ExerciseId)
--VALUES (1,2);

--INSERT INTO StudentExercise (StudentId, ExerciseId)
--VALUES (3,4);

--INSERT INTO StudentExercise (StudentId, ExerciseId)
--VALUES (5,6);


/*3.Write a query to return
all student first and last names with their cohort's name.*/

--SELECT 
--    FirstName,
--    LastName,
--    CohortId
--FROM Cohort;

/*4.Write a query to return student first and last names with their
cohort's name only for a single cohort.*/

--SELECT
--     FirstName,
--     LastName,
--     CohortId
--FROM 

/*Write a query to return all instructors ordered by their last name.
NOTE: SQL offers the ability to order by columns in a table.*/