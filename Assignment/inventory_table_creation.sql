-- create table supplier
-- (
-- sid char(5) PRIMARY key,
-- sname varchar(20) not null,
-- sadd VARCHAR(30) not null,
-- city VARCHAR(20) DEFAULT 'delhi',
-- sphone VARCHAR(15) UNIQUE,
-- email VARCHAR(25)

-- ); 

-- alter TABLE supplier
-- alter COLUMN email VARCHAR(40)

-- alter TABLE supplier
-- ALTER COLUMN sname VARCHAR(30) NOT NULL

-- alter TABLE supplier
-- ALTER COLUMN sadd VARCHAR(40) not null

-- INSERT INTO supplier (sid, sname, sadd, city, sphone, email) VALUES
-- ('S1001', 'Gupta Electronics', '23, Nehru Road, Gandhi Nagar', 'New Delhi', '+91 98765 43210', 'guptaelectronics@gmail.com'),
-- ('S1002', 'Singh Brothers Pvt. Ltd.', '12, Sardar Patel Marg, Civil Lines', 'Jaipur', '+91 99887 76655', 'singhbrothers@yahoo.com'),
-- ('S1003', 'Patel Textiles', '54, Mahatma Gandhi Road, Malad West', 'Mumbai', '+91 88777 65544', 'pateltextiles@gmail.com'),
-- ('S1004', 'Chopra Enterprises', '33, Model Town, Ludhiana', 'Ludhiana', '+91 77665 54433', 'chopraenterprises@yahoo.com'),
-- ('S1005', 'Kumar Pharmaceuticals', '89, Swami Vivekananda Road, Kachiguda', 'Hyderabad', '+91 66554 43322', 'kumarpharma@gmail.com'),
-- ('S1006', 'Sharma Plastics', '76, Industrial Area, Sector 5', 'Chandigarh', '+91 55443 32211', 'sharmaplastics@yahoo.com'),
-- ('S1007', 'Reddy Foods Pvt. Ltd.', '21, Banjara Hills, Jubilee Hills', 'Hyderabad', '+91 44332 21100', 'reddyfoods@gmail.com'),
-- ('S1008', 'Verma Textiles', '45, Lajpat Nagar, Model Town', 'Amritsar', '+91 33221 10044', 'vermatextiles@yahoo.com'),
-- ('S1009', 'Sinha Cosmetics', '10, Park Street, Ballygunge', 'Kolkata', '+91 22110 03344', 'sinhacosmetics@gmail.com'),
-- ('S1010', 'Jain Pharmaceuticals', '67, Civil Lines, Near Railway Station', 'Nagpur', '+91 11002 23344', 'jainpharma@yahoo.com');


-- CREATE table product
-- (
--     pid char(5) PRIMARY key,
--     pdesc VARCHAR(100) not null,
--     price int CHECK(price>0),
--     category char(2) check(category in ('IT','HA','HC')),
--     sid char(5) FOREIGN KEY REFERENCES supplier(sid)
-- );

-- INSERT INTO product (pid, pdesc, price, category, sid) VALUES
-- ('P1001', 'Laptop', 50000, 'IT', 'S1001'),
-- ('P1002', 'Smartphone', 25000, 'IT', 'S1002'),
-- ('P1003', 'Refrigerator', 35000, 'HA', 'S1003'),
-- ('P1004', 'Washing Machine', 28000, 'HA', 'S1004'),
-- ('P1005', 'Television', 40000, 'HA', 'S1005'),
-- ('P1006', 'Air Conditioner', 45000, 'HA', 'S1006'),
-- ('P1007', 'Printer', 12000, 'IT', 'S1007'),
-- ('P1008', 'Microwave Oven', 15000, 'HA', 'S1008'),
-- ('P1009', 'Tablet', 20000, 'IT', 'S1009'),
-- ('P1010', 'Headphones', 3000, 'HC', 'S1010'),
-- ('P1011', 'Router', 5000, 'IT', 'S1001'),
-- ('P1012', 'Camera', 35000, 'IT', 'S1002'),
-- ('P1013', 'Vacuum Cleaner', 8000, 'HA', 'S1003'),
-- ('P1014', 'Dishwasher', 30000, 'HA', 'S1004'),
-- ('P1015', 'Blender', 2500, 'HA', 'S1005'),
-- ('P1016', 'Iron', 2000, 'HA', 'S1006'),
-- ('P1017', 'Bluetooth Speaker', 5000, 'HC', 'S1007'),
-- ('P1018', 'Smartwatch', 15000, 'HC', 'S1008'),
-- ('P1019', 'Projector', 40000, 'IT', 'S1009'),
-- ('P1020', 'Hair Dryer', 3000, 'HA', 'S1010');


-- CREATE TABLE Cust
-- (
--   cid char(5) PRIMARY KEY,
--   cname VARCHAR(20) NOT NULL,
--   address VARCHAR(30)  NOT NULL,
--   city VARCHAR(20) NOT NULL,
--   phone VARCHAR(15) NOT NULL,
--   email VARCHAR(20) NOT NULL,
--   dob DATE CHECK (dob< '1-JAN-2000')
-- );

-- alter TABLE Cust
-- alter COLUMN email  VARCHAR(50) NOT NULL

-- alter TABLE Cust
-- alter COLUMN address  VARCHAR(50) NOT NULL

-- INSERT INTO Cust (cid, cname, address, city, phone, email, dob) VALUES
-- ('C1001', 'Rahul Sharma', '45, Gandhi Nagar, Main Road', 'Mumbai', '+91 9876543210', 'rahul.sharma@gmail.com', '1995-03-12'),
-- ('C1002', 'Priya Patel', '23, Patel Colony, Station Road', 'Ahmedabad', '+91 9988776655', 'priya.patel@yahoo.com', '1998-07-25'),
-- ('C1003', 'Amit Singh', '67, Singh Enclave, Cantonment', 'Lucknow', '+91 8877665544', 'amit.singh@gmail.com', '1996-11-03'),
-- ('C1004', 'Neha Gupta', '32, Gupta Lane, Rajaji Nagar', 'Delhi', '+91 7766554433', 'neha.gupta@yahoo.com', '1997-05-20'),
-- ('C1005', 'Kavita Reddy', '89, Reddy Street, Jubilee Hills', 'Hyderabad', '+91 6655443322', 'kavita.reddy@gmail.com', '1994-09-08'),
-- ('C1006', 'Rajesh Kumar', '56, Kumar Nagar, MG Road', 'Bangalore', '+91 5544332211', 'rajesh.kumar@yahoo.com', '1999-02-15'),
-- ('C1007', 'Anjali Verma', '78, Verma Colony, Civil Lines', 'Jaipur', '+91 4433221100', 'anjali.verma@gmail.com', '1993-12-30'),
-- ('C1008', 'Sandeep Jain', '101, Jain Street, Gandhi Nagar', 'Chennai', '+91 3322110044', 'sandeep.jain@yahoo.com', '1992-08-17'),
-- ('C1009', 'Ritu Chopra', '21, Chopra Lane, Model Town', 'Kolkata', '+91 2211003344', 'ritu.chopra@gmail.com', '1998-04-05'),
-- ('C1010', 'Vivek Srinivasan', '43, Srinivasan Nagar, Park Street', 'Pune', '+91 1100223344', 'vivek.srinivasan@yahoo.com', '1997-10-11');


-- CREATE TABLE stock
-- (
--     pid char(5) FOREIGN KEY REFERENCES product(pid),
--     sqty int CHECK(sqty >= 0),
--     rol int CHECK(rol >0),
--     moq int CHECK(moq >= 5)

-- );

-- INSERT INTO stock (pid, sqty, rol, moq) VALUES
-- ('P1001', 50, 10, 10),
-- ('P1002', 100, 20, 15),
-- ('P1003', 30, 5, 8),
-- ('P1004', 80, 15, 12),
-- ('P1005', 60, 12, 10),
-- ('P1006', 40, 8, 6),
-- ('P1007', 70, 18, 14),
-- ('P1008', 20, 4, 5),
-- ('P1009', 90, 22, 18),
-- ('P1010', 55, 11, 9);



-- create TABLE orders
-- (
--     oid CHAR(5) PRIMARY key,
--     odate date,
--     pid CHAR(5) FOREIGN key REFERENCES product(pid),
--     cid CHAR(5) FOREIGN key REFERENCES Cust(cid),
--     oqty int CHECK(oqty >=1)
-- )

-- INSERT INTO orders (oid, odate, pid, cid, oqty) VALUES
-- ('O1001', '2024-02-13', 'P1001', 'C1001', 2),
-- ('O1002', '2024-02-14', 'P1002', 'C1002', 3),
-- ('O1003', '2024-02-15', 'P1003', 'C1003', 1),
-- ('O1004', '2024-02-16', 'P1004', 'C1004', 5),
-- ('O1005', '2024-02-17', 'P1005', 'C1005', 2);
