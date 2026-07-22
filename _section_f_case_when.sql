--===================================================================================
--SECTION F- CASE WHEN===============================================================
--Maureen Jepkoech Kipkosgei=========================================================
--22-07-2026=========================================================================
--===================================================================================

--Write a query using CASE WHEN to label each exam result with a grade description
select marks,
case
	when marks >=80 then 'Distinction'
	when marks >=60 then 'Merit'
	when marks >=40 then 'Pass'
	else 'Fail'
end as Performance
from greenwood_academy.exam_results
order by marks;

--Write a query using CASE WHEN to label each student as:
select first_name,last_name,class,
case 
	when class in ('Form 3','Form 4') then 'Senior'
	when class in ('Form 2','Form 1') then 'Junior'
end as student_level
from greenwood_academy.students
order by class;