create database school;
use school;

create table student (
student_id int primary key,
name varchar (50),
course varchar(30),
age int);

insert into student (student_id,name,course,age)
values
(1,'Aditya','Science',18),
(2,'Ram','Maths',20),
(3,'Shyam','Science',21),
(4,'Rita','Commerce',19);

select*from student;

create table teacher (
teacher_id int primary key ,
name varchar (40),
subjects varchar(30));

insert into teacher 
values
(1, 'Mr. Sharma', 'Maths'),
(2, 'Ms. Gupta', 'Science'),
(3, 'Mrs. Das', 'Commerce');

select*from teacher;

create table subjects (
subject_id int primary key ,
subject_name varchar (40),
teacher_id int ,
foreign key (teacher_id) references teacher (teacher_id)
);

insert into Subjects 
values
(101, 'Maths', 1),
(102, 'Science', 2),
(103, 'Commerce', 3);

select*from subjects;

create table marks (
marks_id int primary key ,
student_id int,
subject_id int ,
marks_obtained int ,
foreign key (student_id) references student (student_id),
foreign key (subject_id) references subjects (subject_id)
);
insert into Marks 
values
(1, 1, 101, 85),
(2, 1, 102, 78),
(3, 2, 103, 92),
(4, 3, 101, 88);

select*from marks;


