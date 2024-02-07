--CITY WISE COUNT OF EMPLOYEES ARRANGED IN DESCENDING ORDER

select 
city,count(eid) as 'emp_count'
from EMP
group by city
order by 'emp_count' DESC
-------------------------------------------------------------------------------------------------------
--DETAILS OF THE EMPLOYEES WHO DOES NOT HAVE AN ACCOUNT ON YAHOO DOMAIN

select * from EMP where email not like '%@yahoo.com%'
-------------------------------------------------------------------------------------------------------
-- From the Emp_Sal table display:
-- DESIGNATION WISE TOTAL COST 
-- AND NUMBER OF MEMBERS ARRANGED IN DESCENDING ORDER OF THE TOTAL COST

select 
    desi,
    sum(salary) as 'total_salary',
    count(eid) as 'emp_count' 
FROM EMPSAL
group by desi
order by 'total_salary' desc

