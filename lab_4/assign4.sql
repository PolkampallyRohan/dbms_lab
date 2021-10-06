/* Querries */

/* 1. For a certain event only students who belong to team R or are females are allowed to participate. Find the list of students eligible. (Union) */
      
      select name as eligible_students from student  where team = 'R' union select name as eligible_students from student where gender = 'F';
      
/* 2. Display count of students in each team. (group by) */      

      select team, count(*) from student group by team;

/* 3. Display the average math score of boys from each team. (group by) */

      select team,avg(math) as MathAverage_forBoys from student where gender = 'M' group by team;

/* 4. Display data in the following format using Group By and Order By */

      (select name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports from student order by field(team,'A','G','R','W') ,sports asc limit 2) union 
      (select name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports from student order by field(team,'G','R','W','A') ,rollno  limit 2) union 
      (select name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports from student order by field(team,'R','W','A','G') ,sports asc limit 2) union 
      (select name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports from student order by field(team,'W','A','G','R'), math limit 1) union 
      (select name,rollno,dob,yjoin,gender,team,math,sci,eng,social,sports from student order by field(team,'W','A','G','R') ,sci desc limit 2);

/* 5. Use the group by followed by order by followed by limit to show ‘team’ and ‘avg(sci)’ columns of the top two teams with highest average in science. */

      select team,avg(sci) from student group by team order by avg(sci) desc limit 2;






