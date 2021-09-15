/* 1.Suppose we are having a vaccination drive and someone suggests we give the vaccines as per age.We want to vaccinate the eldest student first and youngest last with nobody
     under 18( as there might be people under 18). Make a list containing name, rno and age in descending order of age. (sub query, alias, aggregation) */
 
     select name,rollno as rno,(datediff(curdate(),dob)/365.25) as age from student where ((datediff(curdate(),dob)/365.25)>18) order by age desc;
 
/* 2.Suppose the college was holding an event for sports for the students, one of the sports sections has a minimum age of 20 years for participating. Now give a count of 
     women and men separately that qualify for this event from the students table. (sub queries, aggregation) */
     
     select count(case when gender='F' then dob end) as NumberOfWomen_ThatQualify, count(case when gender='M' then dob end) as NumOfMen_ThatQualify  from student where ((datediff(curdate(),dob)/365.25)>=20);

/* 3.Display number of students whose maths score is more than the class avg score in all subjects.(sub query) */
     
     select count(*) as NumOf_Students from student where(math> (select sum((math+sci+eng+social+sports)/5)/11 from student)) ;

/* 4.Suppose the university expansion team was looking at how they should expand further and in what areas of the country. As of now they currently need the ratio of campus 
     capacity that is in the south to the west zone of the country. (Like, use resource mentioned towards the end) */
     
     select sum(case when 500000<=pincode and pincode<700000 then cap end)/sum(case when 300000<=pincode and pincode<500000 then cap end) as RatioOf_SouthToWest from campus;

/* 5.This year the college has decided to not only award the student who came first in the college(from any batch/joining yrs) but also the student who has come second.
     Find the student who has the second highest avg in the table.(sub queries, aggregation, comparison, logical) */
     
     select name as StudentWith_SecondHighestAverage,max((math+sci+eng+social+sports)/5) as Average from student where  (math+sci+eng+social+sports)/5 < (select max((math+sci+eng+social+sports)/5) from student);

/* 6.Display student’s name, rno, avg marks (“avg_marks”), score status (“score_status”) where score status is “High” if above average and “Low” if below average.
     (sub queries) */
     
     select name,rollno as rno,(math+sci+eng+social+sports)/5 as avg_marks,case when (math+sci+eng+social+sports)/5 > (select sum((math+sci+eng+social+sports)/5)/11 from student) then 'HIGH' when (math+sci+eng+social+sports)/5 < (select sum((math+sci+eng+social+sports)/5)/11 from student) then 'LOW' end as score_status from student;       
