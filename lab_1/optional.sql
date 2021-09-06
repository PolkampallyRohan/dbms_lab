/*creating table one Student*/
CREATE DATABASE university_profile;

USE university_profile;

CREATE TABLE Student(name varchar(20),rollno int,age int ,math int ,sci int,eng int,social int,sports int);

INSERT INTO Student VALUES ('dwayne',33,21,98,94,91,96,55);

INSERT INTO Student VALUES ('john',58,18,70,87,77,98,67); 
INSERT INTO Student VALUES ('dave',27,22,54,68,98,96,77);

INSERT INTO Student VALUES ('randy',56,19,69,75,65,67,98);

INSERT INTO Student VALUES ('kane',11,22,86,95,52,57,73);

INSERT INTO Student VALUES ('tom',50,21,76,84,62,74,81);

/*creating table two Campus*/

CREATE TABLE Campus(name varchar(20),cid int,loc varchar(20),cap int,law bool,engg bool,buss bool);

INSERT INTO Campus VALUES('mec',101,'hyd',1000,1,1,1);

INSERT INTO Campus VALUES('muc',104,'mad',2000,0,1,1);

INSERT INTO Campus VALUES('mgt',107,'bom',1500,1,0,1);


/* 11. Class teacher wants to find the student name and rollno with the maximum avg in all subjects.*/
SELECT name,rollno FROM student WHERE (sci+math+eng+social+sports)/5=(SELECT max((sci+math+eng+social+sports)/5) FROM student);
/*12. An inquisitive student wants to find out the names of students whose names have the letter ‘a’ in the
second position of their name*/
SELECT name FROM student WHERE name like "_a%"
/*13. A math faculty wants to focus on the weak students first so he wants to see the names and marks of the
students in asc order of marks*/
SELECT name,math FROM student order by math asc;



