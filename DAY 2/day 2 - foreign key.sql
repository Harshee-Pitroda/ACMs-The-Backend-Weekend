create table student(id int(3) primary key unique not null auto_increment, name varchar(20), age int(3));
desc student;
insert into student (name, age) values ("Vedant", 19),("Harish",20), ("Ram", 18), ("Meenakshi", 21);
select * from student;

create table info(id int(3) primary key unique not null auto_increment, student_id int(4), foreign key(student_id) references student(id),
grade varchar(10), course varchar(20));
desc info;
insert into info (student_id, course, grade) values (1, "dbms", "A+"), (2, "dbms", "A"), (3, "chemistry", "B+"), (1, "pps", "B");
select * from info;

select student.id,info.student_id,student.name,info.course, info.grade from student join info on student.id=info.student_id;