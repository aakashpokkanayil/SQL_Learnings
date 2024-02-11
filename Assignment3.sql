
-------------------------------------------------- Changes in [dbo].[EMP] Table--------------------------------------

ALTER TABLE [dbo].[EMP]
alter COLUMN eid char(5) not null

ALTER TABLE [dbo].[EMP]
add CONSTRAINT pk_eid primary key(eid)

---------------------------------------------------------------------------------------------------------------------

ALTER TABLE [dbo].[EMP]
alter COLUMN name VARCHAR(20) not null

---------------------------------------------------------------------------------------------------------------------

ALTER TABLE [dbo].[EMP]
add CONSTRAINT chk_addr CHECK(addr not like '%UTTAM NAGAR%')

---------------------------------------------------------------------------------------------------------------------

select * from [dbo].[EMP] where city  in ('Delhi', 'Gurugram', 'Faridabad', 'NOIDA')

DELETE [dbo].[EMP] where city  in ('Delhi', 'Gurugram', 'Faridabad', 'NOIDA')

ALTER TABLE [dbo].[EMP]
ADD CONSTRAINT chk_city CHECK(city not in ('Delhi', 'Gurugram', 'Faridabad', 'NOIDA'))

----------------------------------------------------------------------------------------------------------------------

ALTER TABLE [dbo].[EMP]
alter COLUMN phone VARCHAR(15) not null

-----------------------------------------------------------------------------------------------------------------------

select * from [dbo].[EMP] where email not like '%Gmail%' and email not like  '%Yahoo%'

update [dbo].[EMP]
set email=REPLACE(email,'@email.com','@gmail.com')

alter TABLE [dbo].[EMP]
add CONSTRAINT chk_email CHECK(email like '%gmail%' or email like  '%Yahoo%')

-----------------------------------------------------------------------------------------------------------------------

ALTER TABLE [dbo].[EMP]
ADD CONSTRAINT chk_dob CHECK(dob <= '1-Jan-2000')


---------------------------------------Changes in Table [dbo].[EMPSAL]-------------------------------------------------

select * from [dbo].[EMPSAL]

DELETE [dbo].[EMPSAL] where eid='E0001'

DELETE [dbo].[EMPSAL] where dept not in ('HR', 'MIS', 'OPS' , 'IT', 'ADMIN', 'TEMP')

update [dbo].[EMPSAL]
set desi='MGR'
where desi='Manager' or desi='Marketing Manager'

update [dbo].[EMPSAL]
set desi='ASSO'
where desi='Sales Representative'

update [dbo].[EMPSAL]
set desi='DIR'
where desi='Software Engineer'



ALTER TABLE [dbo].[EMPSAL]
--ADD CONSTRAINT fk_empid FOREIGN KEY([eid]) REFERENCES [dbo].[EMP]([eid])
--ADD CONSTRAINT chk_dept CHECK(dept in ('HR', 'MIS', 'OPS' , 'IT', 'ADMIN', 'TEMP'))
--ADD CONSTRAINT chk_desi CHECK(desi in ('ASSO', 'MGR', 'VP', 'DIR'))
--ADD CONSTRAINT chk_salary CHECK(salary >=20000)
ADD CONSTRAINT dft_dept DEFAULT 'TEMP' FOR [dept]   

----------------------------------------------------------------------------------------------------------------------


select * from EMP
select * from EMPSAL