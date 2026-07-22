--===================================================================================
--SECTION E - COUNT==================================================================
--Maureen Jepkoech Kipkosgei=========================================================
--22-07-2026=========================================================================
--===================================================================================

--How many students are currently in Form 3? 

select count(*) as form3_students
from greenwood_academy.students 
where class = 'Form 3';

--How many exam results have a mark of 70 or above? 

select count(*) as marks_above_70
from greenwood_academy.exam_results 
where marks >= 70;

--How many students are female?

select count(*) as female_students
from greenwood_academy.students 
where gender = 'F';

--How many male students are in form four?

select count(*) as form4_male_students
from greenwood_academy.students
where gender = 'M' and class = 'Form 4';