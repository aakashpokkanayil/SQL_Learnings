-- CREATE TABLE emp_sal
-- (
--     eid char(5),
--     dept VARCHAR(30),
--     desi VARCHAR(30),
--     doj DATE,
--     salary INT
-- )

-- INSERT INTO emp_sal VALUES
-- ('E0001', 'ADMIN', 'SR Manager', '2010-05-20', 60000),
-- ('E0002', 'IT', 'Software Engineer', '2015-09-10', 50000),
-- ('E0003', 'HR', 'Manager', '2018-03-15', 45000),
-- ('E0004', 'MIS', 'Marketing Manager', '2012-11-08', 55000),
-- ('E0005', 'OPS', 'VP', '2016-07-25', 65000),
-- ('E0006', 'TEMP', 'Sales Representative', '2019-04-05', 48000),
-- ('E0007', 'RD   ', 'Research Analyst', '2014-12-12', 52000);

select * from [dbo].[EMPSAL]

select * 
from EMP 
where name like '%sharma'


-- update emp_sal
-- set salary= salary+((salary/100)*10)

select * from [dbo].[EMPSAL]