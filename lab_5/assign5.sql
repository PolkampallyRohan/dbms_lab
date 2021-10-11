/* Querries */

/* 1. Design a table marsk_sem1.
      a. It must contain all marks as seen in the student table.
      b. One way to go about this is to create a copy of the student table and drop columns.
      c. Make roll number the primary key */
      
   create table marks_sem1 as select rollno,math,sci,eng,social,sports from student;
   alter table marks_sem1 add primary key(rollno); 
   select * from marks_sem1;
   describe marks_sem1;
   
/* 2. Design a table faculty
      a. Add columns and rows with given constraints */
      
   create table faculty (name varchar(20),fid char(4) primary key,subject varchar(20));
   insert into faculty values("kakashi","4003","math");
   insert into faculty values("guy","5002","sports");
   insert into faculty values("kurenai","5038","eng");
   select * from faculty;
   describe faculty;
      
/* 3. Design a table sem1
      a. Add columns and rows with given constraints
      b. Note - if the “mul” doesn't show up with you run “describe sem1;” then add a few rows
         and then alter the table */
         
   create table sem1(subj_id char(4) primary key,subject varchar(20),fid char(4),cap int,campus int,foreign key (fid) references faculty(fid),foreign key (campus) references campus(cid));
   insert into sem1 values("101","math","4003",60,101);
   insert into sem1 values("102","sports","5002",70,101);
   insert into sem1 values("105","eng","5038",60,104);
   select * from sem1;
   describe sem1;
         
/* 4. Update campus table
      a. Make cid primary key */
      
   alter table campus add primary key (cid);
      
/* 5. Update student table
      a. Drop not required columns (as shown below)
      b. Add fk to rollno to sem1 rollno
      c. Add cid
      d. Add fk to cid to campus cid */
