-====================================================================================
--SECTION A - BUILDING THE DATABASE(DDL)=============================================
--Maureen Jepkoech Kipkosgei=========================================================
--22-07-2026=========================================================================
--===================================================================================

create schema greenwood_academy;
set search_path to greenwood_academy;

------------------------------------
----------Students table------------
------------------------------------
create table greenwood_academy.students(
   student_id int SERIAL primary key,
   first_name varchar(50) not null,
   last_name varchar(50) not null,
   gender varchar(1),
   date_of_birth date,
   class varchar(10),
   city varchar(50)
);

---------------------------------------
------------Subjects table-------------
---------------------------------------
create table greenwood_academy.subjects(
   subject_id int SERIAL primary key,
   subject_name varchar(100) not null unique,
   department varchar(50),
   teacher_name varchar(50),
   credits int
);

----------------------------------------
-------------Exam-Results---------------
----------------------------------------
create table greenwood_academy.exam_results(
   result_id int SERIAL primary key,
   student_id int not null references greenwood_academy.students(student_id),
   subject_id int not null references greenwood_academy.subjects(subject_id),
   marks int not null,
   exam_date date,
   grade varchar(2)
);

---Add column
alter table greenwood_academy.students
add column phone_number varchar(20);

--Rename column
alter table greenwood_academy.subjects
rename column credits to credit_hours;

--delete a column
alter table greenwood_academy.students
drop phone_number;