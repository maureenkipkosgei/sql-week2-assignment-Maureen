--===================================================================================
--SECTION C - QUERYING THE DATA(FILTERING WITH WHERE)================================
--Maureen Jepkoech Kipkosgei=========================================================
--22-07-2026=========================================================================
--===================================================================================

--Write a query to find all students who are in Form 4

select first_name,last_name,class
from greenwood_academy.students
where class = 'Form 4';

--Write a query to find all subjects in the Sciences department.

select subject_name,department
from greenwood_academy.subjects
where department = 'Sciences';

--Write a query to find all exam results where the marks are greater than or equal to 70.

select marks
from greenwood_academy.exam_results 
where marks >= 70;

--Write a query to find all female students only.

select first_name, last_name
from greenwood_academy.students 
where gender = 'F';

--Write a query to find all students who are in Form 3 AND from Nairobi.

select first_name,last_name
from greenwood_academy.students 
where class = 'Form 3' and city = 'Nairobi';

--Write a query to find all students who are in Form 2 OR Form 4.

select first_name,last_name,class
from greenwood_academy.students
where class in ('Form 2','Form 4');