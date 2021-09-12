/*creating table one Student*/
create database university_profile;

use university_profile;

create table Student(name varchar(20),rollno int,age int ,math int ,sci int,eng int,social int,sports int);

insert into Student values ('dwayne',33,21,98,94,91,96,55);

insert into Student values ('john',58,18,70,87,77,98,67); 
insert into Student values ('dave',27,22,54,68,98,96,77);

insert into Student values ('randy',56,19,69,75,65,67,98);

insert into Student values ('kane',11,22,86,95,52,57,73);

insert into Student values ('tom',50,21,76,84,62,74,81);


/*creating table two Campus*/

create table Campus(name varchar(20),cid int,loc varchar(20),cap int,law bool,engg bool,buss bool);

insert into Campus values('mec',101,'hyd',1000,1,1,1);

insert into Campus values('muc',104,'mad',2000,0,1,1);

insert into Campus values('mgt',107,'bom',1500,1,0,1);


/* 11. Class teacher wants to find the student name and rollno with the maximum avg in all subjects.*/
select name,rollno from student where (sci+math+eng+social+sports)/5=(select max((sci+math+eng+social+sports)/5) from student);
/*12. An inquisitive student wants to find out the names of students whose names have the letter ‘a’ in the
second position of their name*/
select name from student where name like "_a%";
/*13. A math faculty wants to focus on the weak students first so he wants to see the names and marks of the
students in asc order of marks*/
select name,math from student order by math asc;



