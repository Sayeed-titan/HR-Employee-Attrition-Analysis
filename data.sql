-- =====================================================
-- PROJECT : HR Employee Attrition Analysis (DML)
-- Objective: Identify patterns in employee turnover
-- Skills: SQL Analysis, Business Insights, Reporting
-- =====================================================

USE HRAnalyticsDB;
GO

-- Insert Departments
INSERT INTO Departments VALUES
(1, 'Engineering', 101),
(2, 'Sales', 102),
(3, 'Marketing', 103),
(4, 'HR', 104),
(5, 'Finance', 105);
GO

-- Insert Employees
INSERT INTO Employees VALUES
(101,'Arun Kumar',1,'2019-03-15',95000,35,'Male','Senior',5,4,0),
(102,'Priya Sharma',2,'2020-07-20',65000,28,'Female','Mid',4,3,1),
(103,'Rahul Verma',1,'2021-01-10',55000,26,'Male','Junior',3,4,0),
(104,'Sneha Patel',3,'2018-11-05',85000,32,'Female','Senior',6,5,0),
(105,'Vikram Singh',2,'2022-04-18',45000,24,'Male','Junior',2,2,1),
(106,'Anita Desai',4,'2019-08-22',70000,30,'Female','Mid',5,4,0),
(107,'Karthik Rajan',1,'2020-02-14',75000,29,'Male','Mid',4,3,0),
(108,'Meera Nair',5,'2017-06-30',110000,38,'Female','Senior',7,5,0),
(109,'Suresh Iyer',2,'2021-09-12',48000,25,'Male','Junior',3,2,1),
(110,'Divya Menon',3,'2019-12-01',72000,31,'Female','Mid',5,4,0),
(111,'Amit Joshi',1,'2022-08-05',52000,23,'Male','Junior',2,3,0),
(112,'Rekha Gupta',4,'2018-03-18',68000,33,'Female','Mid',6,4,0),
(113,'Naveen Reddy',2,'2021-05-25',55000,27,'Male','Junior',3,2,1),
(114,'Pooja Saxena',5,'2020-10-10',82000,34,'Female','Senior',4,5,0),
(115,'Rajesh Pillai',1,'2019-07-08',88000,36,'Male','Senior',5,4,0),
(116,'Suman Das',3,'2022-01-20',46000,24,'Female','Junior',2,3,1),
(117,'Gopal Krishna',2,'2020-04-15',58000,28,'Male','Mid',4,3,0),
(118,'Lakshmi Rao',4,'2018-09-28',75000,35,'Female','Senior',6,4,0),
(119,'Venkat Subbu',1,'2021-11-03',62000,27,'Male','Mid',3,3,0),
(120,'Anjali Mishra',5,'2019-02-12',90000,32,'Female','Senior',5,5,0),
(121,'Prakash Hegde',2,'2022-06-08',42000,23,'Male','Junior',2,2,1),
(122,'Nisha Kapoor',3,'2020-08-22',68000,30,'Female','Mid',4,4,0),
(123,'Sanjay Mehta',1,'2018-12-15',105000,40,'Male','Senior',6,5,0),
(124,'Ritu Agarwal',4,'2021-03-30',55000,26,'Female','Junior',3,3,0),
(125,'Deepak Nair',2,'2019-10-05',60000,29,'Male','Mid',5,3,1),
(126,'Swati Bose',5,'2020-01-18',78000,33,'Female','Senior',4,4,0),
(127,'Harish Chandra',1,'2022-09-12',48000,24,'Male','Junior',1,3,0),
(128,'Kavita Sharma',3,'2019-05-25',82000,35,'Female','Senior',5,4,0),
(129,'Mohan Lal',2,'2021-07-14',52000,26,'Male','Junior',3,2,1),
(130,'Geeta Reddy',4,'2018-08-08',72000,34,'Female','Mid',6,4,0),
(131,'Anil Kapoor',1,'2020-11-20',70000,30,'Male','Mid',4,4,0),
(132,'Sudha Murthy',5,'2019-04-03',95000,37,'Female','Senior',5,5,0),
(133,'Ramesh Kumar',2,'2022-02-28',44000,23,'Male','Junior',2,2,1),
(134,'Usha Rani',3,'2020-06-15',65000,29,'Female','Mid',4,3,0),
(135,'Satish Babu',1,'2018-10-22',98000,39,'Male','Senior',6,5,0),
(136,'Padma Lakshmi',4,'2021-08-08',58000,27,'Female','Mid',3,3,0),
(137,'Ganesh Venkat',2,'2019-01-12',62000,31,'Male','Mid',5,3,0),
(138,'Radha Krishna',5,'2020-09-05',85000,36,'Female','Senior',4,4,0),
(139,'Sunil Sharma',1,'2022-04-20',50000,25,'Male','Junior',2,3,0),
(140,'Bhavani Devi',3,'2019-11-15',75000,33,'Female','Senior',5,4,0),
(141,'Prasad Rao',2,'2021-02-08',48000,24,'Male','Junior',3,2,1),
(142,'Kamala Hassan',4,'2018-05-30',80000,38,'Female','Senior',6,5,0),
(143,'Arjun Rampal',1,'2020-03-18',72000,32,'Male','Mid',4,4,0),
(144,'Smita Patil',5,'2019-07-25',88000,35,'Female','Senior',5,4,0),
(145,'Krishna Murthy',2,'2022-10-10',46000,23,'Male','Junior',1,2,1),
(146,'Meenakshi Iyer',3,'2020-12-03',60000,28,'Female','Mid',4,3,0),
(147,'Raghu Nandan',1,'2019-09-18',85000,34,'Male','Senior',5,4,0),
(148,'Vani Sharma',4,'2021-04-22',52000,26,'Female','Junior',3,3,0),
(149,'Babu Mohan',2,'2018-02-14',68000,36,'Male','Mid',6,3,1),
(150,'Sarita Devi',5,'2020-05-28',92000,38,'Female','Senior',4,5,0);
GO

--SELECT * FROM Employees;
--GO