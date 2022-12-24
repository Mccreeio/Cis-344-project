create database teachers_portal;
use teachers_portal;
Create table students (
studentID int not null unique auto_increment primary key,
studentName varchar (45) NOT NULL,
enrolledCourseID int default (1),
grade float null
);
create table courses ( 
courseId int not null unique auto_increment primary key,
courseName varchar (45) not null
);
Insert into students  (studentName, enrolledcourseId, grade)
values
(
'Maria Jozef', '1','90'
);
Insert into students  (studentName, enrolledcourseId, grade)
values
(
 'Linda Jones', '2', '89'
 );
Insert into students  (studentName, enrolledcourseId, grade)
values
(
'John McGrail', '1', '98'
);
Insert into students  (studentName, enrolledcourseId, grade)
values
(
 'Patty Luna', '2', '78'
);

Insert into courses (courseName)
values
(
 'Database design'
);
Insert into courses (courseName)
values
(
 'Calculus'
);
Insert into courses (courseName)
values
(
 'Physics 1'
);

select * from students;
create procedure studentswithgrade () select enrolledcourseid 
from students 
left join courses  
on students.enrollcourseid = courses.courseid;

