create database HRDataBase;
show databases;
use hrdatabase;
create table Employee;
create database HRDataBase;
show databases;
use HRDataBase;

create table Employee
(
    EMP_ID CHAR(7) PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    SEX VARCHAR(1),
    STATE VARCHAR(2),
    ZIP VARCHAR(4)
);

INSERT INTO EMPLOYEE VALUES ('10026', 'WILSON', 'ADINOLFI', 'M', 'MA', '0218');

DESCRIBE EMPLOYEE;

SHOW TABLES;
DESCRIBE APP;
DESCRIBE PERFORMANCE;
DESCRIBE DEPARTMENT;
Alter Table employee
Modify zip varchar(5);
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10026', ' Wilson  K', 'Adinolfi', 'M', 'MA', '01960');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10026', ' Wilson  K', 'Adinolfi', 'M', 'MA', '01960');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10084', ' Karthikeyan   ', 'Ait Sidi', 'M', 'MA', '02148');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10196', ' Sarah', 'Akinkuolie', 'F', 'MA', '01810');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10088', 'Trina', 'Alagbe', 'F', 'MA', '01886');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10069', ' Carol ', 'Anderson', 'F', 'MA', '02169');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10002', ' Linda  ', 'Anderson', 'F', 'MA', '01844');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10194', ' Colby', 'Andreola', 'F', 'MA', '02110');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10062', ' Sam', 'Athwal', 'M', 'MA', '02199');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10114', ' Linda', 'Bachiochi', 'F', 'MA', '01902');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10250', ' Alejandro ', 'Bacong', 'M', 'MA', '01886');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10252', ' Rachael  ', 'Baczenski', 'F', 'MA', '01902');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10242', ' Thomas', 'Barbara', 'M', 'MA', '02062');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10012', ' Hector', 'Barbossa', 'M', 'TX', '78230');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10265', ' Francesco  A', 'Barone', 'M', 'MA', '01810');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10066', ' Nader', 'Barton', 'M', 'MA', '02747');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10061', ' Norman', 'Bates', 'M', 'MA', '02050');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10023', ' Kimberly  ', 'Beak', 'F', 'MA', '02145');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10055', ' Courtney ', 'Beatrice', 'F', 'MA', '01915');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10245', ' Renee', 'Becker', 'F', 'MA', '02026');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10277', ' Scott', 'Becker', 'M', 'MA', '02452');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10046', ' Sean', 'Bernstein', 'M', 'MA', '02072');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10226', ' Lowan  M', 'Biden', 'F', 'MA', '02027');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10003', ' Helen', 'Billis', 'F', 'MA', '02031');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10294', ' Dianna', 'Blount', 'F', 'MA', '02171');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10267', ' Betsy', 'Bondwell', 'F', 'MA', '02210');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10199', ' Frank', 'Booth', 'M', 'CT', '06033');
INSERT INTO Employee (EMP_ID, FIRST_NAME, LAST_NAME, SEX, STATE, ZIP) VALUES ('10081', ' Bonalyn', 'Boutwell', 'F', 'MA', '02468');




TABLE: APP

create table APP
(
    POS_ID CHAR(2) PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    POSITION VARCHAR(20),
    DATE_OF_HIRE VARCHAR(10)
);


TABLE: PERFORMANCE

create table PERFORMANCE
(
    PERF_SCORE_ID CHAR(4) PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    POSITION VARCHAR(20),
    PERF_SCORE VARCHAR(20)
    LAST_PERF_REVIEWDATE VARCHAR(10)
);

INSERT INTO PERFORMANCE (PERF_SCORE_ID, FIRST_NAME, LAST_NAME, POSITION, PERF_SCORE, LAST_PERF_REVIEWDATE) VALUES ('4', 'Bonalyn', 'Boutwell', 'Production Technician', 'Exceeds', '1/17/19');








TABLE: DEPARTMENT 



(attempted to import data from the excel sheet)
USE hr_database;
SET GLOBAL local_infile=1;
SHOW VARIABLES LIKE 'local_infile';

CREATE TABLE employee_table (
    emp_id INT,
    employee_name VARCHAR(100),
    sex CHAR(1),
    state VARCHAR(50),
    zip VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'C:/Users/YourName/Documents/BUS 385 Dataset for SQL.csv'
INTO TABLE employee_table
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
emp_id,
employee_name,
sex,
state,
zip
);

SELECT * FROM employee_table LIMIT 10;
SELECT count(*) FROM employee_table;

INSERT INTO employee_table
	VALUES ('10026', 'Adinolfi, Wilson  K', 'M', 'MA', '1960' );

SELECT * FROM employee_table;
SHOW tables;
select *
from employee;


SELECT * 
from performance;
DROP TABLE IF EXISTS PERFORMANCE;
SHOW tables;


DROP TABLE IF EXISTS PERFORMANCE;
CREATE TABLE PERFORMANCE
(
    PERF_SCORE_ID CHAR(4) PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    POSITION VARCHAR(30),
    PERF_SCORE VARCHAR(20),
    LAST_PERF_REVIEWDATE VARCHAR(10)
);
INSERT INTO PERFORMANCE (PERF_SCORE_ID, FIRST_NAME, LAST_NAME, POSITION, PERF_SCORE, LAST_PERF_REVIEWDATE) VALUES ('4', 'Bonalyn', 'Boutwell', 'Production Technician', 'Exceeds', '1/17/19');

DROP TABLE IF EXISTS Performance;

CREATE TABLE APP
(
    POS_ID CHAR(2) PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    POSITION VARCHAR(30),
    DATE_OF_HIRE VARCHAR(10)
);


select *
from APP;

INSERT INTO APP (POS_ID, FIRST_NAME, LAST_NAME, POSITION, DATE_OF_HIRE) VALUES
('1',  'Wilson',      'Adinolfi',        'Technician',              '01/15/2018'),
('2',  'Karthikeyan', 'Ait Sidi',        'Analyst',                 '03/22/2017'),
('3',  'Sarah',       'Akinkuolie',      'Supervisor',              '07/19/2019'),
('4',  'Trina',       'Alagbe',          'Coordinator',             '02/11/2016'),
('5',  'Carol',       'Anderson',        'Manager',                 '09/30/2015'),
('6',  'Linda',       'Anderson',        'HR Admin',                '11/08/2014'),
('7',  'Colby',       'Andreola',        'Production Lead',         '06/12/2020'),
('8',  'Sam',         'Athwal',          'Technician',              '12/28/2018'),
('9',  'Linda',       'Bachiochi',       'Technician',              '05/14/2017'),
('10', 'Alejandro',   'Bacong',          'Production Tech',         '10/03/2016'),
('11', 'Rachael',     'Baczenski',       'Analyst',                 '08/23/2021'),
('12', 'Thomas',      'Barbara',         'Coordinator',             '04/19/2015'),
('13', 'Hector',      'Barbossa',        'Supervisor',              '09/09/2013'),
('14', 'Francesco',   'Barone',          'Technician',              '03/05/2022'),
('15', 'Nader',       'Barton',          'Production Lead',         '01/11/2018'),
('16', 'Norman',      'Bates',           'Technician',              '07/15/2016'),
('17', 'Kimberly',    'Beak',            'Analyst',                 '02/17/2019'),
('18', 'Courtney',    'Beatrice',        'HR Admin',                '08/01/2020'),
('19', 'Renee',       'Becker',          'Coordinator',             '05/30/2014'),
('20', 'Scott',       'Becker',          'Supervisor',              '10/20/2011'),
('21', 'Sean',        'Bernstein',       'Analyst',                 '07/07/2017'),
('22', 'Lowan',       'Biden',           'Technician',              '06/02/2018'),
('23', 'Helen',       'Billis',          'Manager',                 '12/12/2010'),
('24', 'Dianna',      'Blount',          'Coordinator',             '03/29/2019'),
('25', 'Betsy',       'Bondwell',        'Production Technician',   '09/14/2018');


select *
from APP;

INSERT INTO PERFORMANCE (PERF_ID, PERF_SCORE_ID, FIRST_NAME, LAST_NAME, POSITION, PERF_SCORE, LAST_PERF_REVIEWDATE) VALUES
(1, 4, ' Wilson  K', 'Adinolfi', 'Production Technician I', 'Exceeds', '2019-01-17'),
(2, 3, ' Karthikeyan   ', 'Ait Sidi', 'Sr. DBA', 'Fully Meets', '2016-02-24'),
(3, 3, ' Sarah', 'Akinkuolie', 'Data Analyst', 'Fully Meets', '2012-05-15'),
(4, 3, 'Trina', 'Alagbe', 'Data Analyst', 'Fully Meets', '2019-01-03'),
(5, 3, ' Carol ', 'Anderson', 'IT Support', 'Fully Meets', '2016-02-01'),
(6, 4, ' Linda  ', 'Anderson', 'Production Technician I', 'Exceeds', '2019-01-07'),
(7, 3, ' Colby', 'Andreola', 'Software Engineer', 'Fully Meets', '2019-01-02'),
(8, 3, ' Sam', 'Athwal', 'Production Technician I', 'Fully Meets', '2019-02-25'),
(9, 3, ' Linda', 'Bachiochi', 'Production Technician I', 'Fully Meets', '2019-01-25'),
(10, 3, ' Alejandro ', 'Bacong', 'IT Support', 'Fully Meets', '2019-02-18'),
(11, 3, ' Rachael  ', 'Baczenski', 'Sr. Accountant', 'Fully Meets', '2016-01-30'),
(12, 3, ' Thomas', 'Barbara', 'Production Technician I', 'Fully Meets', '2016-05-06'),
(13, 4, ' Hector', 'Barbossa', 'Data Analyst', 'Exceeds', '2019-02-25'),
(14, 3, ' Francesco  A', 'Barone', 'Area Sales Manager', 'Fully Meets', '2019-02-14'),
(15, 3, ' Nader', 'Barton', 'Accountant I', 'Fully Meets', '2017-03-02'),
(16, 3, ' Norman', 'Bates', 'Accountant I', 'Fully Meets', '2017-04-05'),
(17, 4, ' Kimberly  ', 'Beak', 'Production Technician II', 'Exceeds', '2019-01-14'),
(18, 3, ' Courtney ', 'Beatrice', 'Sr. DBA', 'Fully Meets', '2019-01-14'),
(19, 3, ' Renee', 'Becker', 'Database Administrator', 'Fully Meets', '2015-01-15'),
(20, 3, ' Scott', 'Becker', 'Production Technician I', 'Fully Meets', '2019-01-11'),
(21, 3, ' Sean', 'Bernstein', 'BI Director', 'Fully Meets', '2019-01-14'),
(22, 3, ' Lowan  M', 'Biden', 'BI Developer', 'Fully Meets', '2019-01-10'),
(23, 4, ' Helen', 'Billis', 'Production Technician I', 'Exceeds', '2019-02-27'),
(24, 2, ' Dianna', 'Blount', 'Director of Sales', 'Needs Improvement', '2019-02-27'),
(25, 3, ' Betsy', 'Bondwell', 'Enterprise Architect', 'Fully Meets', '2014-03-04');

CREATE TABLE PERFORMANCE
(
    PERF_ID INT PRIMARY KEY,          -- 1–25
    PERF_SCORE_ID INT,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    POSITION VARCHAR(40),
    PERF_SCORE VARCHAR(20),
    LAST_PERF_REVIEWDATE VARCHAR(10)
);

DROP TABLE IF EXISTS DEPARTMENT;

CREATE TABLE DEPARTMENT
(
    DEPT_ROW_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    POSITION VARCHAR(40),
    DEPARTMENT VARCHAR(50)
);
INSERT INTO DEPARTMENT (DEPT_ROW_ID, FIRST_NAME, LAST_NAME, POSITION, DEPARTMENT) VALUES
(1, ' Wilson  K', 'Adinolfi', 'Production Technician I', 'Production'),
(2, ' Karthikeyan   ', 'Ait Sidi', 'Sr. DBA', 'IT/IS'),
(3, ' Sarah', 'Akinkuolie', 'Data Analyst', 'IT/IS'),
(4, 'Trina', 'Alagbe', 'Data Analyst', 'IT/IS'),
(5, ' Carol ', 'Anderson', 'IT Support', 'IT/IS'),
(6, ' Linda  ', 'Anderson', 'Production Technician I', 'Production'),
(7, ' Colby', 'Andreola', 'Software Engineer', 'Software Engineering'),
(8, ' Sam', 'Athwal', 'Production Technician I', 'Production'),
(9, ' Linda', 'Bachiochi', 'Production Technician I', 'Production'),
(10, ' Alejandro ', 'Bacong', 'IT Support', 'IT/IS'),
(11, ' Rachael  ', 'Baczenski', 'Sr. Accountant', 'Finance'),
(12, ' Thomas', 'Barbara', 'Production Technician I', 'Production'),
(13, ' Hector', 'Barbossa', 'Data Analyst', 'IT/IS'),
(14, ' Francesco  A', 'Barone', 'Area Sales Manager', 'Sales'),
(15, ' Nader', 'Barton', 'Accountant I', 'Finance'),
(16, ' Norman', 'Bates', 'Accountant I', 'Finance'),
(17, ' Kimberly  ', 'Beak', 'Production Technician II', 'Production'),
(18, ' Courtney ', 'Beatrice', 'Sr. DBA', 'IT/IS'),
(19, ' Renee', 'Becker', 'Database Administrator', 'IT/IS'),
(20, ' Scott', 'Becker', 'Production Technician I', 'Production'),
(21, ' Sean', 'Bernstein', 'BI Director', 'IT/IS'),
(22, ' Lowan  M', 'Biden', 'BI Developer', 'IT/IS'),
(23, ' Helen', 'Billis', 'Production Technician I', 'Production'),
(24, ' Dianna', 'Blount', 'Director of Sales', 'Sales'),
(25, ' Betsy', 'Bondwell', 'Enterprise Architect', 'Software Engineering');

DROP TABLE IF EXISTS APP;
CREATE TABLE APP
(
    POS_ID INT PRIMARY KEY,         -- 1–25 unique
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    POSITION VARCHAR(40),
    DATE_OF_HIRE VARCHAR(10)
);

INSERT INTO APP (POS_ID, FIRST_NAME, LAST_NAME, POSITION, DATE_OF_HIRE) VALUES
(1, ' Wilson  K', 'Adinolfi', 'Production Technician I', '2011-07-05'),
(2, ' Karthikeyan   ', 'Ait Sidi', 'Sr. DBA', '2015-03-30'),
(3, ' Sarah', 'Akinkuolie', 'Data Analyst', '2011-07-05'),
(4, 'Trina', 'Alagbe', 'Data Analyst', '2008-01-07'),
(5, ' Carol ', 'Anderson', 'IT Support', '2011-07-11'),
(6, ' Linda  ', 'Anderson', 'Production Technician I', '2012-01-09'),
(7, ' Colby', 'Andreola', 'Software Engineer', '2014-11-10'),
(8, ' Sam', 'Athwal', 'Production Technician I', '2013-09-30'),
(9, ' Linda', 'Bachiochi', 'Production Technician I', '2009-07-06'),
(10, ' Alejandro ', 'Bacong', 'IT Support', '2015-01-05'),
(11, ' Rachael  ', 'Baczenski', 'Sr. Accountant', '2011-01-10'),
(12, ' Thomas', 'Barbara', 'Production Technician I', '2012-04-02'),
(13, ' Hector', 'Barbossa', 'Data Analyst', '2014-11-10'),
(14, ' Francesco  A', 'Barone', 'Area Sales Manager', '2012-02-20'),
(15, ' Nader', 'Barton', 'Accountant I', '2012-09-24'),
(16, ' Norman', 'Bates', 'Accountant I', '2011-02-21'),
(17, ' Kimberly  ', 'Beak', 'Production Technician II', '2016-07-21'),
(18, ' Courtney ', 'Beatrice', 'Sr. DBA', '2011-04-04'),
(19, ' Renee', 'Becker', 'Database Administrator', '2014-07-07'),
(20, ' Scott', 'Becker', 'Production Technician I', '2013-07-08'),
(21, ' Sean', 'Bernstein', 'BI Director', '2012-04-02'),
(22, ' Lowan  M', 'Biden', 'BI Developer', '2013-08-19'),
(23, ' Helen', 'Billis', 'Production Technician I', '2014-07-07'),
(24, ' Dianna', 'Blount', 'Director of Sales', '2011-04-04'),
(25, ' Betsy', 'Bondwell', 'Enterprise Architect', '2011-01-10');

select *
from Employee;

CREATE TABLE RECRUITER
(
    RECRUITER_ID INT PRIMARY KEY,
    MANAGER_NAME VARCHAR(50),
RECRUITMENT_SOURCE VARCHAR(50)
);

DROP TABLE IF EXISTS RECRUITER;

INSERT INTO RECRUITER (RECRUITER_ID, MANAGER_NAME, RECRUITMENT_SOURCE) VALUES
(1, 'Amanda Collins', 'LinkedIn'),
(2, 'Robert Hayes', 'Indeed'),
(3, 'Jessica Martinez', 'Employee Referral'),
(4, 'Daniel Lopez', 'Glassdoor'),
(5, 'Megan Sullivan', 'Career Fair'),
(6, 'Patrick O''Brien', 'Company Website'),
(7, 'Sophia Chen', 'University Recruiting'),
(8, 'James Wilson', 'LinkedIn'),
(9, 'Olivia Patel', 'Recruitment Agency'),
(10, 'Marcus Green', 'Internal Posting'),
(11, 'Hannah Rhodes', 'LinkedIn'),
(12, 'Christopher Young', 'Indeed'),
(13, 'Vanessa Rivera', 'Employee Referral'),
(14, 'Tyler Brooks', 'Glassdoor'),
(15, 'Brianna Flores', 'Career Fair'),
(16, 'Ethan Carter', 'Company Website'),
(17, 'Grace Kim', 'University Recruiting'),
(18, 'Michael Andrews', 'LinkedIn'),
(19, 'Natalie Suarez', 'Recruitment Agency'),
(20, 'Jonathan Price', 'Internal Posting'),
(21, 'Rachel Donovan', 'Company Website'),
(22, 'Kevin Thompson', 'Employee Referral'),
(23, 'Selena Cruz', 'Glassdoor'),
(24, 'Derrick Coleman', 'Indeed'),
(25, 'Tiffany Summers', 'Career Fair');

DROP TABLE IF EXISTS EMPLOYMENT_STATUS;

CREATE TABLE EMPLOYMENT_STATUS
(
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    EMPLOYMENT_STATUS VARCHAR(20),
    EMPLOYMENT_SATISFACTION VARCHAR(20),
    TERMINATION_REASON VARCHAR(50),
    DATE_OF_TERMINATION VARCHAR(10)
);


INSERT INTO EMPLOYMENT_STATUS 
(FIRST_NAME, LAST_NAME, EMPLOYMENT_STATUS, EMPLOYMENT_SATISFACTION, TERMINATION_REASON, DATE_OF_TERMINATION) VALUES
('Wilson K', 'Adinolfi', 'Active', 'High', NULL, NULL),
('Karthikeyan', 'Ait Sidi', 'Active', 'Very High', NULL, NULL),
('Sarah', 'Akinkuolie', 'Terminated', 'Low', 'Attendance', '2019-04-12'),
('Trina', 'Alagbe', 'Active', 'Medium', NULL, NULL),
('Carol', 'Anderson', 'Active', 'High', NULL, NULL),
('Linda', 'Anderson', 'Terminated', 'Very Low', 'Unhappy', '2018-11-30'),
('Colby', 'Andreola', 'Active', 'Medium', NULL, NULL),
('Sam', 'Athwal', 'Leave', 'Medium', 'Medical Leave', '2020-02-14'),
('Linda', 'Bachiochi', 'Active', 'Very High', NULL, NULL),
('Alejandro', 'Bacong', 'Terminated', 'Low', 'Performance', '2019-08-22'),
('Rachael', 'Baczenski', 'Active', 'High', NULL, NULL),
('Thomas', 'Barbara', 'Active', 'Medium', NULL, NULL),
('Hector', 'Barbossa', 'Terminated', 'Low', 'Policy Violation', '2020-01-09'),
('Francesco A', 'Barone', 'Active', 'High', NULL, NULL),
('Nader', 'Barton', 'Active', 'Very High', NULL, NULL),
('Norman', 'Bates', 'Terminated', 'Low', 'Restructuring', '2018-06-18'),
('Kimberly', 'Beak', 'Active', 'High', NULL, NULL),
('Courtney', 'Beatrice', 'Leave', 'Medium', 'Family Leave', '2021-03-05'),
('Renee', 'Becker', 'Active', 'Very High', NULL, NULL),
('Scott', 'Becker', 'Terminated', 'Very Low', 'Misconduct', '2017-12-01'),
('Sean', 'Bernstein', 'Active', 'High', NULL, NULL),
('Lowan M', 'Biden', 'Active', 'Medium', NULL, NULL),
('Helen', 'Billis', 'Terminated', 'Low', 'Job Abandonment', '2019-09-10'),
('Dianna', 'Blount', 'Active', 'High', NULL, NULL),
('Betsy', 'Bondwell', 'Active', 'Very High', NULL, NULL);

select *
from Salary;

CREATE TABLE SALARY
(
    EMP_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    POSITION VARCHAR(40),
    SALARY INT
);

INSERT INTO SALARY 
(EMP_ID, FIRST_NAME, LAST_NAME, POSITION, SALARY) VALUES
(10026, 'Wilson K', 'Adinolfi', 'Production Technician I', 52000),
(10084, 'Karthikeyan', 'Ait Sidi', 'Sr. DBA', 118000),
(10196, 'Sarah', 'Akinkuolie', 'Data Analyst', 78000),
(10088, 'Trina', 'Alagbe', 'Data Analyst', 76000),
(10069, 'Carol', 'Anderson', 'IT Support', 62000),
(10002, 'Linda', 'Anderson', 'Production Technician I', 51000),
(10194, 'Colby', 'Andreola', 'Software Engineer', 95000),
(10062, 'Sam', 'Athwal', 'Production Technician I', 52000),
(10114, 'Linda', 'Bachiochi', 'Production Technician I', 51000),
(10250, 'Alejandro', 'Bacong', 'IT Support', 61000),
(10252, 'Rachael', 'Baczenski', 'Sr. Accountant', 90000),
(10242, 'Thomas', 'Barbara', 'Production Technician I', 51500),
(10012, 'Hector', 'Barbossa', 'Data Analyst', 78000),
(10265, 'Francesco A', 'Barone', 'Area Sales Manager', 96000),
(10066, 'Nader', 'Barton', 'Accountant I', 67000),
(10061, 'Norman', 'Bates', 'Accountant I', 66000),
(10023, 'Kimberly', 'Beak', 'Production Technician II', 56000),
(10055, 'Courtney', 'Beatrice', 'Sr. DBA', 120000),
(10245, 'Renee', 'Becker', 'Database Administrator', 95000),
(10277, 'Scott', 'Becker', 'Production Technician I', 51000),
(10046, 'Sean', 'Bernstein', 'BI Director', 135000),
(10226, 'Lowan M', 'Biden', 'BI Developer', 98000),
(10003, 'Helen', 'Billis', 'Production Technician I', 51500),
(10294, 'Dianna', 'Blount', 'Director of Sales', 142000),
(10267, 'Betsy', 'Bondwell', 'Enterprise Architect', 155000);

SHOW TABLES;

SELECT RECRUITER.RECRUITMENT_SOURCE,
       COUNT(APP.POS_ID) AS hires
FROM RECRUITER
JOIN APP
ON RECRUITER.RECRUITER_ID = APP.RECRUITER_ID
GROUP BY RECRUITER.RECRUITMENT_SOURCE;

UPDATE APP SET EMP_ID = '10026' WHERE POS_ID = '1';
UPDATE APP SET EMP_ID = '10084' WHERE POS_ID = '2';
UPDATE APP SET EMP_ID = '10196' WHERE POS_ID = '3';
UPDATE APP SET EMP_ID = '10088' WHERE POS_ID = '4';
UPDATE APP SET EMP_ID = '10069' WHERE POS_ID = '5';
UPDATE APP SET EMP_ID = '10002' WHERE POS_ID = '6';
UPDATE APP SET EMP_ID = '10194' WHERE POS_ID = '7';
UPDATE APP SET EMP_ID = '10062' WHERE POS_ID = '8';
UPDATE APP SET EMP_ID = '10114' WHERE POS_ID = '9';
UPDATE APP SET EMP_ID = '10250' WHERE POS_ID = '10';
UPDATE APP SET EMP_ID = '10252' WHERE POS_ID = '11';
UPDATE APP SET EMP_ID = '10242' WHERE POS_ID = '12';
UPDATE APP SET EMP_ID = '10012' WHERE POS_ID = '13';
UPDATE APP SET EMP_ID = '10265' WHERE POS_ID = '14';
UPDATE APP SET EMP_ID = '10066' WHERE POS_ID = '15';
UPDATE APP SET EMP_ID = '10061' WHERE POS_ID = '16';
UPDATE APP SET EMP_ID = '10023' WHERE POS_ID = '17';
UPDATE APP SET EMP_ID = '10055' WHERE POS_ID = '18';
UPDATE APP SET EMP_ID = '10245' WHERE POS_ID = '19';
UPDATE APP SET EMP_ID = '10277' WHERE POS_ID = '20';
UPDATE APP SET EMP_ID = '10046' WHERE POS_ID = '21';
UPDATE APP SET EMP_ID = '10226' WHERE POS_ID = '22';
UPDATE APP SET EMP_ID = '10003' WHERE POS_ID = '23';
UPDATE APP SET EMP_ID = '10294' WHERE POS_ID = '24';
UPDATE APP SET EMP_ID = '10267' WHERE POS_ID = '25';
SET SQL_SAFE_UPDATES = 0;

UPDATE PERFORMANCE
SET EMP_ID = '10026' WHERE LAST_NAME = 'Adinolfi';
UPDATE PERFORMANCE
SET EMP_ID = '10084' WHERE LAST_NAME = 'Ait Sidi';
UPDATE PERFORMANCE
SET EMP_ID = '10196' WHERE LAST_NAME = 'Akinkuolie';
UPDATE PERFORMANCE
SET EMP_ID = '10088' WHERE LAST_NAME = 'Alagbe';
UPDATE PERFORMANCE
SET EMP_ID = '10069' WHERE LAST_NAME = 'Anderson' AND FIRST_NAME LIKE 'Carol';
UPDATE PERFORMANCE
SET EMP_ID = '10002' WHERE LAST_NAME = 'Anderson' AND FIRST_NAME LIKE 'Linda';
UPDATE PERFORMANCE
SET EMP_ID = '10194' WHERE LAST_NAME = 'Andreola';
UPDATE PERFORMANCE
SET EMP_ID = '10062' WHERE LAST_NAME = 'Athwal';
UPDATE PERFORMANCE
SET EMP_ID = '10114' WHERE LAST_NAME = 'Bachiochi';
UPDATE PERFORMANCE
SET EMP_ID = '10250' WHERE LAST_NAME = 'Bacong';
UPDATE PERFORMANCE
SET EMP_ID = '10252' WHERE LAST_NAME = 'Baczenski';
UPDATE PERFORMANCE
SET EMP_ID = '10242' WHERE LAST_NAME = 'Barbara';
UPDATE PERFORMANCE
SET EMP_ID = '10012' WHERE LAST_NAME = 'Barbossa';
UPDATE PERFORMANCE
SET EMP_ID = '10265' WHERE LAST_NAME = 'Barone';
UPDATE PERFORMANCE
SET EMP_ID = '10066' WHERE LAST_NAME = 'Barton';
UPDATE PERFORMANCE
SET EMP_ID = '10061' WHERE LAST_NAME = 'Bates';
UPDATE PERFORMANCE
SET EMP_ID = '10023' WHERE LAST_NAME = 'Beak';
UPDATE PERFORMANCE
SET EMP_ID = '10055' WHERE LAST_NAME = 'Beatrice';
UPDATE PERFORMANCE
SET EMP_ID = '10245' WHERE LAST_NAME = 'Becker' AND FIRST_NAME LIKE 'Renee%';
UPDATE PERFORMANCE
SET EMP_ID = '10277' WHERE LAST_NAME = 'Becker' AND FIRST_NAME LIKE 'Scott%';
UPDATE PERFORMANCE
SET EMP_ID = '10046' WHERE LAST_NAME = 'Bernstein';
UPDATE PERFORMANCE
SET EMP_ID = '10226' WHERE LAST_NAME = 'Biden';
UPDATE PERFORMANCE
SET EMP_ID = '10003' WHERE LAST_NAME = 'Billis';
UPDATE PERFORMANCE
SET EMP_ID = '10294' WHERE LAST_NAME = 'Blount';
UPDATE PERFORMANCE
SET EMP_ID = '10267' WHERE LAST_NAME = 'Bondwell';
UPDATE PERFORMANCE
SET EMP_ID = '10069' WHERE LAST_NAME= 'Anderson';
UPDATE PERFORMANCE
SET EMP_ID = '10002'
WHERE LAST_NAME = 'Anderson' AND FIRST_NAME LIKE '%Lin%';
SET SQL_SAFE_UPDATES = 1;
SELECT 
    R.MANAGER_NAME AS Recruiter,
    R.RECRUITMENT_SOURCE AS Source,
    COUNT(*) AS Total_Hires,
    SUM(CASE WHEN P.PERF_SCORE = 'Exceeds' THEN 1 ELSE 0 END) AS High_Performers,
    ROUND(
        SUM(CASE WHEN P.PERF_SCORE = 'Exceeds' THEN 1 ELSE 0 END) 
        / COUNT(*) * 100, 1
    ) AS High_Performer_Percentage
FROM RECRUITER R
JOIN APP A ON R.RECRUITER_ID = A.RECRUITER_ID
JOIN PERFORMANCE P ON A.EMP_ID = P.EMP_ID
GROUP BY R.MANAGER_NAME, R.RECRUITMENT_SOURCE
ORDER BY High_Performer_Percentage DESC;

DESCRIBE APP;









