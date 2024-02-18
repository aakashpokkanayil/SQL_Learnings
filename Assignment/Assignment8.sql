
-- A-1 : EID, NAME, CITY OF GURGAON EMPLOYEES

    select eid , name ,city from EMP where CITY='GURGAON'

-- A-2 : EID, NAME , DOJ ,DEPT, DESI & SALARY OF ALL MANAGERS

    select emp.EID, NAME , DOJ ,DEPT, DESI,SALARY
    from EMP
    inner join EMP_SAL on emp.eid=EMP_SAL.EID
    where DESI='manager'

-- A-3: REDUCE THE SALARY OF ALL DELHI EMPLOYEES BY 10%.

    -- update EMP_SAL 
    -- set SALARY=SALARY-(SALARY*.01)
    -- where eid in (select eid from emp where city='delhi')

-- A-4 : DISPLAY THE EID, NAME , CITY, DOJ ,DEPT, DESI & SALARY OF THE TEAM
-- MEMBERS OF DAVID & RAMESH GUPTA.

        select emp.EID, NAME , CITY, DOJ ,DEPT, DESI ,SALARY
        from EMP 
        INNER JOIN EMP_SAL on emp.EID=EMP_SAL.EID
        where name in ('DAVID','RAMESH GUPTA')


-- A-5: CREATE A TRAINING TABLE CONTAINING EID, NAME, DEPT. INSERT THE DETAILS
-- OF OPS TEAM MEMBERS IN THE TRAINING TABLE.

    -- CREATE table Training
    -- (
    --     EID char(5),
    --     NAME varchar(50),
    --     DEPT VARCHAR(20)
    -- )

    -- insert into training
    -- select emp.EID, NAME, DEPT
    -- from EMP
    -- INNER join EMP_SAl on emp.EID=EMP_SAL.EID
    -- WHERE dept='ops'

    select * from training

-- A-6: DETAILS OF DIRECTORS SHOULD BE DELETED FROM THE TRAINING TABLE.

    -- delete training
    -- WHERE eid in (
    -- select EID
    -- from training 
    -- where eid in (select eid from EMP_SAL where desi='Director'))



-- A-7: DISPLAY THE SALARY DETAILS OFF ALL EMPLOYES IF ANY OF THE TEAM MEMBER
-- HAS SALARY MORE THAN 200000.


    select * from emp 
    WHERE EXISTS (select * from EMP_SAL where SALARY> 200000)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- A-1 : CREATE BELOW PROCEDURES IN THE INVENTORY DATABASE AS SPECIFIED :

-- ADDSUPPLIER – SHOULD ADD THE SUPPLIER IN THE SUPLIER TABLE AND DISPLAY THE
-- DETAILS OF THE NEW SUPPLIER ADDED.

-- ADDPRO – SHOULD ADD THE PRODUCT IN THE PRODUCT TABLE AND DISPLAY THE
-- DETAILS OF THE NEW PRODUCT ADDED.

-- ADDCUST – SHOULD ADD THE CUSTOMER IN THE CUSTOMER TABLE AND DISPLAY THE
-- DETAILS OF THE NEW CUSTOMER ADDED.

-- ADDORDER – SHOULD ADD THE ORDER IN THE ORDERS TABLE AND DISPLAY THE DETAILS
-- OF THE ORDER. ORDER DATE SHOULD BE CURRENT DATE AND SHOULD COME
-- AUTOMATICALLY.

-- ALTER PROCEDURE ADDSUPPLIER @sid char(5), @sname varchar(50), @sadd varchar(50), @city varchar(20), @sphone varchar(20), @email VARCHAR(50)
-- AS
--     BEGIN

--         insert into supplier
--         VALUES
--         (
--             @sid , @sname , @sadd , @city , @sphone , @email
--         ) 
--         select * from supplier where sid= @sid
        
--     END



    -- alter PROCEDURE ADDPRO @pid char(5), @pdesc varchar(50), @price int, @category varchar(50), @sid char(5)
    -- as
    -- BEGIN
    --     INSERT INTO product (pid, pdesc, price, category, sid) VALUES (@pid, @pdesc, @price, @category, @sid);

    --     select * from product where pid= @pid
    -- END



    -- alter PROCEDURE ADDCUST @cid char(5), @cname varchar(50), @address varchar(50), @city varchar(50), @phone varchar(50), @email varchar(50), @dob DATE
    -- as
    -- BEGIN
    --     INSERT INTO Cust (cid, cname, address, city, phone, email, dob) 
    --     VALUES
    --         (
    --             @cid, @cname, @address, @city, @phone, @email, @dob
    --         );

    --          select * from Cust where cid= @cid
    -- END



    -- create PROCEDURE ADDORDER @oid char(5), @pid char(5), @cid char(5), @oqty int
    -- as
    -- BEGIN
    --    INSERT INTO orders (oid, odate, pid, cid, oqty) VALUES (@oid, getdate(), @pid, @cid, @oqty);

    --    select * from orders where oid=@oid
    -- END
    



-- ADDSUPPLIER 'S1011', 'Tech Solutions', '56, Electronics Market, Nehru Place', 'New Delhi', '+91 9876543211', 'info@techsolutions.com'

-- ADDPRO 'P1021', 'Smart Speaker', 5000, 'IT', 'S1001'

-- ADDCUST 'C1011', 'Ananya Gupta', '17, Park Street, Banjara Hills', 'Hyderabad', '+91 9988776655', 'ananya.gupta@gmail.com', '1995-08-22'

-- ADDORDER 'O1006', 'P1006', 'C1006', 4

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- A-1 : CREATE A FUNCTION FOR AUTOGENERATION OF 5 CHARACTERS ALPHA NUMERIC ID. IT
-- SHOULD ACCEPT 2 PARAMETERS A CHARACTER AND THE NUMBER AND RETURN THE ID BY
-- CONCANATING THE CHARACTER , REQUIRED ZEROS AND THE SPECIFIED NUMBER.

-- alter FUNCTION autogenerateid(@num int ,@appendchar char(1))
-- RETURNS CHAR(5)
-- AS
-- BEGIN

--     declare @resultid char(5)

--     set @resultid=  
--     (CASE 
--         WHEN @num < 10 THEN CONCAT(upper(@appendchar),'000',@num)
--         WHEN @num < 100 THEN CONCAT(upper(@appendchar),'00',@num)
--         WHEN @num < 1000 THEN CONCAT(upper(@appendchar),'0',@num)
--         WHEN @num < 10000 THEN CONCAT(upper(@appendchar),@num)
--         else 'NA'
--         END)
--     RETURN @resultid
-- end

-- create SEQUENCE SUPPLIERSEQ
-- as INT
-- START WITH 12
-- increment BY 1





select dbo.autogenerateid(13,'e')

select * FROM supplier









-- RECREATE BELOW PROCEDURES IN THE INVENTORY DATABASE AS SPECIFIED (ALL THE ID s SHOULD BE
-- AUTOMATICALLY GENERATED USING ABOVE CREATED FUNCTION AND SEQUENCES) :


-- ADDSUPPLIER – SHOULD ADD THE SUPPLIER IN THE SUPLIER TABLE AND DISPLAY THE DETAILS OF THE
-- NEW SUPPLIER ADDED.


            -- ALTER PROCEDURE ADDSUPPLIER  @sname varchar(50), @sadd varchar(50), @city varchar(20), @sphone varchar(20), @email VARCHAR(50)
            -- AS
            --     BEGIN

            --         insert into supplier
            --         VALUES
            --         (
            --             dbo.autogenerateid(next value for SUPPLIERSEQ,'S') , @sname , @sadd , @city , @sphone , @email
            --         ) 
            --         select * from supplier where sid= (select top 1 sid from supplier order by sid desc)
                    
            --     END

            -- ADDSUPPLIER 'Global Imports', '456, Commercial Road', 'Delhi', '+91 9988776655', 'contact@globalimports.com'





-- ADDPRO – SHOULD ADD THE PRODUCT IN THE PRODUCT TABLE AND DISPLAY THE DETAILS OF THE
-- NEW PRODUCT ADDED.

-- create SEQUENCE productseq
-- AS int
-- start with 22
-- increment by 1



--    alter PROCEDURE ADDPRO  @pdesc varchar(50), @price int, @category varchar(50), @sid char(5)
--     as
--     BEGIN
--         INSERT INTO product (pid, pdesc, price, category, sid) VALUES (dbo.autogenerateid(next value for productseq,'P'), @pdesc, @price, @category, @sid);

--         select * from product where pid = (select max(pid) from product)
--     END

    select * from product

   -- ADDPRO 'Wireless Keyboard', 1500, 'IT', 'S1012'


    -- update product set pid=replace(pid,'P1','P0')

    -- alter table ORDERs
    -- drop CONSTRAINT FK__orders__pid__47DBAE45



ADDCUST – SHOULD ADD THE CUSTOMER IN THE CUSTOMER TABLE AND DISPLAY THE DETAILS OF
THE NEW CUSTOMER ADDED.

select * from Cust

--  update Cust set cid=replace(cid,'C1','C0')

-- alter table orders
-- drop CONSTRAINT "FK__orders__cid__48CFD27E"

-- create SEQUENCE custsql
-- as INT
-- START WITH 12
-- increment by 1

-- alter PROCEDURE ADDCUST  @cname varchar(50), @address varchar(50), @city varchar(50), @phone varchar(50), @email varchar(50), @dob DATE
--     as
--     BEGIN
--         INSERT INTO Cust (cid, cname, address, city, phone, email, dob) 
--         VALUES
--             (
--                 dbo.autogenerateid(next value for custsql,'C'), @cname, @address, @city, @phone, @email, @dob
--             );

--              select * from Cust where cid= (select max(cid) from cust)
--     END

-- ADDCUST 'Suresh Menon', '87, Lake View Apartments, Bannerghatta Road', 'Bangalore', '+91 7766554433', 'suresh.menon@gmail.com', '1990-05-15'


-- ADDORDER – SHOULD ADD THE ORDER IN THE ORDERS TABLE AND DISPLAY THE DETAILS OF THE
-- ORDER. ORDER DATE SHOULD BE CURRENT DATE AND SHOULD COME AUTOMATICALLY.

--  update orders set oid=replace(oid,'O1','O0')

-- create SEQUENCE ORDERSSEQ
-- as INT
-- START WITH 7
-- increment BY 1


select * from orders


--  ALTER PROCEDURE ADDORDER  @pid char(5), @cid char(5), @oqty int
--     as
--     BEGIN
--        INSERT INTO orders (oid, odate, pid, cid, oqty) VALUES (dbo.autogenerateid(next value for ORDERSSEQ,'O'), getdate(), @pid, @cid, @oqty);

--        select * from orders where oid=(select max(oid) from orders)
--     END


--ADDORDER  'P0007', 'C0007', 3