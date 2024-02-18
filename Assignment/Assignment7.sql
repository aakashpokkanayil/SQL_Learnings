-- A-1: CREATE A FUNCTION CALC TO PERFORM THE SPECIFIED OPERATION ON THE
-- GIVEN TWO NUMBERS .

--  create FUNCTION calc (@a int ,@b int, @op char(1))
--  RETURNS INT as 
--  BEGIN

--     DECLARE @result INT
--     IF @op='+'
--     BEGIN
--     set @result= @a+@b
--     END
--     ELSE if @op='-'
--     BEGIN
--     set @result=  @a-@b
--     END
--     else if @op='*'
--     BEGIN
--      set @result=  @a*@b
--     END
--     else if @op='/'
--     BEGIN
--      set @result=  @a/@b
--     END
--     ELSE
--     BEGIN
--      set @result=  0
--     END
--     RETURN  @result
--  END;

select dbo.calc(2,2,'/')

-- A-2: FUNCTION TO GENERATE THE EMAIL ID BY ACCEPTING NAME & EID. EMAIL
-- SHOULD CONTAIN 1ST CHARACTER OF 1ST NAME , 1ST CHARACTER OF LAST NAME, LAST
-- 3 DIGITS OF EMP ID FOLLOWED BY @RCG.COM;

    -- ALTER FUNCTION GENERATE_mail(@name VARCHAR(30),@eid char(4))
    -- RETURNS VARCHAR(50)
    -- AS
    -- BEGIN
    --     RETURN ( CONCAT(left(@name,1),SUBSTRING(@name,CHARINDEX(' ',@name)+1,1),right(@eid , 3),'@RCG.COM'))
    -- END

    select dbo.GENERATE_mail(name,eid) as 'mail id',* from emp

-- A-3: FUNCTION TO RETURN EID, NAME, DESI, DEPT ,SALARY OF THE EMPLOYEES OF A
-- SPECIFIED DEPARTMENT.

    -- ALTER function dept_emps
    -- (
    --     @dept VARCHAR(5)
    -- )
    -- RETURNS TABLE
    -- AS
    -- RETURN
    --     select emp.EID, NAME, DESI, DEPT ,SALARY
    --     from emp
    --     INNER join  emp_sal on emp.eid=emp_sal.eid
    --     where dept=@dept
    

    select * from dept_emps('admin')

-- A-4: FUNCTION TO DISPLAY THE NAME , DEPT . DESI , CITY OF THE EMPLOYEES WHO
-- HAVE THE BIRTHDAY IN THE CURRENT MONTH.

    -- alter function bdayboy()
    -- RETURNS TABLE
    -- AS
    -- RETURN
    --     select NAME , DEPT ,DESI , CITY,dob
    --     from emp
    --     INNER join emp_sal on emp.eid=emp_sal.EID
    --     where month(dob)=month(getdate())

    select * from bdayboy()

-- A-5: FUNCTION TO DISPLAY THE NAME, DEPT & DOJ OF EMPLOYEES WHO HAVE
-- COMPLETED 5 YEARS IN THE COMPANY.

    -- create function get_5yr_emps()
    -- RETURNS TABLE
    -- as
    -- RETURN
    --     select NAME,DEPT,DOJ
    --     from emp e
    --     INNER JOIN emp_sal s on e.EID=s.eid
    --     where DATEDIFF(yy,doj,getdate()) >=5


    select * from get_5yr_emps()
