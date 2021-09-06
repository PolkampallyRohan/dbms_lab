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


/*1. Management wants to know the cid of colleges in the uni that can support law.*/
  SELECT * FROM Campus WHERE law=1;

/*2. Faculty wanted to inspect all the details of Dave excluding english and social.*/
 SELECT name,rollno,age,math,sci,sports FROM Student WHERE name='dave';

/*3. Management wants to know the name and roll no of students who have qualified for scholarship.
 Qualification parameter : math OR sci above 80*/
 SELECT name,rollno FROM Student WHERE math>=80 OR sci>=80;

/*4. A teacher for social wants to know what are the distinct marks she gave her students.*/
 SELECT DISTINCT social FROM Student ;

/*5. The english prof wishes to find the number of students failing in his class. Students below 70 fail. */
  SELECT COUNT(*) FROM student WHERE eng<70;

/*6. The stem field wants to find the best qualified student to be head of their club as per marks. List the
    students name and rollno. (stem is sci and math in this case)*/
SELECT name,rollno FROM student WHERE math+sci=(SELECT max(math+sci) FROM student);

/*7. The Dept. of stem wants to know the college location of the university that does not provide engineering.*/
SELECT loc FROM campus WHERE engg=0;

/*8. What is the ratio of students in the campus that provides stem and does not provide stem (query and show
  ratio by calc yourself, no need to divide just num/denom)*/
SELECT (SELECT count(cap) FROM campus WHERE engg=1)/(WHERE count(cap) FROM campus WHERE engg=0);

/*9. For all rounder find students who have score above 70 in all subj.*/
SELECT * FROM Student WHERE math>70 AND sci>70 AND eng>70 AND social>70 AND sports>70;

/*10. Find the count of students in each group if I split the students as per every 20 roll numbers in one group.*/
 SELECT * FROM Student WHERE rollno>=1 AND rollno<=20;
 SELECT * FROM Student WHERE rollno>=21 AND rollno<=40;
 SELECT * FROM Student WHERE rollno>=41 AND rollno<=60;

