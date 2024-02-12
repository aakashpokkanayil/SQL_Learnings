-- 1 ) CREATE A VIEW EMP_SAL_DETAILS TO GET EID NAME DOJ DEPT DESI SALARY
-- AS BASIC. ALSO CALCULATE HRA (15% OF BASIC), PF (9% OF BASIC),
-- NET(BASIC+HRA+PF), GROSS(NET-PF).

    -- CREATE view view_sal_details
    -- AS
    --     select 
    --         emp.EID,
    --         NAME,
    --         DOJ,
    --         DEPT,
    --         DESI,
    --         SALARY as 'basic',
    --         (SALARY * .15) as 'HRA',
    --         (salary * .09) as 'PF',
    --         (salary + (SALARY * .15) + (salary * .09)) as 'NET',
    --         (salary + (SALARY * .15)) as 'GROSS'
    --     from emp
    --     INNER JOIN emp_sal on emp.eid=emp_sal.eid

    select * from view_sal_details


-- 2) CREATE A VIEW TO DISPLAY EID,NAME, DOJ, DESI, DEPT OF ALL THE
-- MANAGERS JOINED IN 2019.

    -- Create VIEW view_managers
    -- AS
    --     select 
    --         emp.EID,
    --         NAME,
    --         DOJ,
    --         DEPT,
    --         DESI
    --     from emp
    --     INNER JOIN emp_sal on emp.eid=emp_sal.eid
    --     where desi='manager' and year(doj)=2019

    select * from view_managers


-- 3) CREATE A VIEW TO HOW MANY TEAM MEMBERS ARE THERE IN EACH
-- DEPARTMENTS IN EACH CITY, ALONG WITH THERE TOTAL & AVERAGE SALARY.

    -- create VIEW view_members
    -- AS
    --     SELECT 
    --         city,
    --         dept,
    --         count(emp.eid) as 'member count',
    --         sum(salary) as "TOTAL SALARY",
    --         avg(salary) as "AVERAGE SALARY"
    --     from emp
    --     INNER join emp_sal
    --     on emp.eid=emp_sal.eid
    --     group by dept,city

    select * from view_members

-- A-1: DEPARTMENT WISE TEAM SIZE AND AVERAGE SALARY OF ALL EMPLOYEES.

    select 
    dept,
    count(eid) as 'team count',
    AVG(salary) as 'avg sal'
    from emp_sal
    GROUP by dept


-- A-2 : COUNT OF MANAGERS IN THE COMPANY.

    select 
    desi,
    count(eid) as 'count of managers'
    from emp_sal
    where desi='manager' 
    GROUP by desi


-- A-3: MAXIMUM & MINIMUM SALARY OF AN ASSOCIATE.

    SELECT
    desi,
    min(salary) as 'min sal',
    max(salary) as 'max sal'
    FROM emp_sal
    where desi='associate'
    group by desi
    


-- A-4: DEPARTMENT WISE TEAM SIZE AND AVERAGE SALARY OF DELHI EMPLOYEES.

    select
    dept, 
    count(emp.eid) as 'team size',
    avg(salary) as 'avg sal'
    from emp_sal
    INNER JOIN emp on emp.eid=emp_sal.EID
    where city='delhi' 
    group by dept


-- A-5: GENERATE OFFICIAL EMAIL OF THE EMPLOYEE TAKING 1ST CHARATCET OF FIRST NAME , 1ST CHARATCER OF LAST NAME , LAST 3 DIGITS OF EID, FOLLED BY ‘RCG.COM’.
-- EMAIL SHOULD BE IN A UPPER CASE.

    SELECT 
    name,
   upper(CONCAT(left(name,1) ,substring(name,CHARINDEX(' ',name)+1,1),right(eid,3),'@RCG.COM')) as "OFFICIAL EMAIL"
    from emp


-- A-6: NAME,CITY , PHNO & EMAIL OF THE EMPLOYEES WHOSE AGE >=40.

    SELECT
    name,
    city,
    phone,
    email,
    datediff(yy,dob,getdate())
    from emp
    where   datediff(yy,dob,getdate()) >=40



-- A-7 EID, NAME DOJ OF EMPLOYEES WHO HAVE COMPLETED 5 YEARS IN THE COMPANY

    SELECT
    eid,
    name,
    doj
    from emp
    where datediff(yy,doj,getdate()) >=5


-- A-8: DETAILS OF THE MANAGERS HAVING BIRTHDAY IN THE CURRENT MONTH

    SELECT
    emp.*
    FROM emp
    inner join emp_sal on emp.EID=emp_sal.EID
    where desi='manager' and month(dob)=month(getdate())


-- A-9 : EID, DEPT , DESI , SALARY OF THE EMPLOYEE WHO IS GETTING THE MAXIMUM SALARY

    SELECT
    EID, DEPT , DESI , SALARY
    from emp_sal
    where salary= (select max(salary) from emp_sal)


-- A-10 : EID, NAME OF EMPLOYEE WHO HAS LONGEST NAME
select 
EID, NAME
from emp
where len(name)=(select max(len(name)) from emp)




--------------------------------Pending----------------------------------

-- 4) IN THE INVENTORY STRUCTURE GENERATE A VIEW BILL. IT SHOULD DISPLAY
-- OID,ODATE,CNAME,ADDRESS,PHONE,PDESC, PRICE, OQTY, AMOUNT