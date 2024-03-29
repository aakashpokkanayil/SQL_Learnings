-- IN THE EMP TABLE DISPLAY :

-- 1 ) EID NAME CITY DOJ DEPT DESI SALARY OF THE DELHI EMPLOYEES

    select 
        emp.eid,
        city,
        DOJ,
        DEPT,
        DESI,
        SALARY 
    from EMP 
    inner join EMP_SAL on  emp.eid=EMP_SAL.eid 
    where city='delhi'

-- 2 ) DETAILS OF ALL THE EMPLOYEES WHOSE SALARY DETAILS ARE NOT AVAILABLE.

    select 
        emp.eid,
        city,
        DOJ,
        DEPT,
        DESI,
        SALARY 
    from EMP 
    inner join EMP_SAL on  emp.eid=EMP_SAL.eid 
    where SALARY is null

--------------------------------Pending----------------------------------

-- IN THE INVENTORY STRUCTURE DISPLAY :

-- 1) PID, PDESC, CATEGORY, SNAME,  

    select PID,PDESC,category,sname,SNAME
    from product
    inner join supplier on product.sid=supplier.sid

-- 2 ) DISPLAY OID , ODATE , CNAME, CADDRESS, CPHONE, PDESC, PRICE,OQTY, AMT

    select OID , ODATE , CNAME, ADDRESS, PHONE, PDESC, PRICE,OQTY, price
    from orders
    INNER JOIN Cust on Cust.cid=orders.cid
    INNER JOIN product on orders.pid=product.pid