SHOW DATABASES;        // This query is used to fetch all the databases in your MySQL Workbench.

CREATE DATABASE warehouse;        // Used to create databases.

USE warehouse;            // Used to switch between databases.
    
SHOW TABLES;            // It is used to see all the tables available in your current database.

CREATE TABLE employees(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

DESC employees;

INSERT INTO employees (id, name, salary) VALUES
(1, 'Liam Smith', 55000),
(2, 'Emma Johnson', 62000),
(3, 'Noah Williams', 58000),
(4, 'Olivia Brown', 70000),
(5, 'Ava Jones', 65000),
(6, 'William Garcia', 50000),
(7, 'Sophia Miller', 72000),
(8, 'James Davis', 63000),
(9, 'Isabella Rodriguez', 67000),
(10, 'Benjamin Martinez', 59000),
(11, 'Lucas Hernandez', 71000),
(12, 'Mia Lopez', 74000),
(13, 'Mason Gonzalez', 76000),
(14, 'Charlotte Wilson', 54000),
(15, 'Ethan Moore', 78000),
(16, 'Amelia Taylor', 60000),
(17, 'Alexander Anderson', 82000),
(18, 'Harper Thomas', 58000),
(19, 'Elijah Martin', 79000),
(20, 'Evelyn Thompson', 53000),
(21, 'Daniel White', 68000),
(22, 'Avery Harris', 72000),
(23, 'Matthew Clark', 55000),
(24, 'Ella Lewis', 62000),
(25, 'Jackson Young', 59000),
(26, 'Scarlett Hall', 70000),
(27, 'Sebastian Walker', 67000),
(28, 'Victoria Allen', 74000),
(29, 'David King', 51000),
(30, 'Aria Wright', 60000),
(31, 'Joseph Scott', 75000),
(32, 'Abigail Green', 70000),
(33, 'Samuel Baker', 66000),
(34, 'Grace Adams', 73000),
(35, 'Carter Nelson', 67000),
(36, 'Chloe Mitchell', 51000),
(37, 'Owen Parker', 64000),
(38, 'Natalie Roberts', 68000),
(39, 'Dylan Carter', 56000),
(40, 'Lily Phillips', 75000),
(41, 'Henry Campbell', 79000),
(42, 'Hannah Edwards', 62000),
(43, 'Julian Turner', 68000),
(44, 'Zoe Collins', 59000),
(45, 'Jack Stewart', 71000),
(46, 'Leah Sanchez', 53000),
(47, 'Gabriel Morris', 75000),
(48, 'Eleanor Rogers', 56000),
(49, 'Wyatt Reed', 70000),
(50, 'Addison Cook', 60000),
(51, 'Luke Morgan', 72000),
(52, 'Penelope Bell', 63000),
(53, 'Isaac Bailey', 50000),
(54, 'Layla Cooper', 81000),
(55, 'Anthony Richardson', 77000),
(56, 'Camila Cox', 75000),
(57, 'Grayson Howard', 71000),
(58, 'Nora Ward', 73000),
(59, 'Andrew Torres', 70000),
(60, 'Hazel Peterson', 66000),
(61, 'Levi Gray', 55000),
(62, 'Zoey Ramirez', 61000),
(63, 'Aaron James', 75000),
(64, 'Riley Brooks', 73000),
(65, 'Nathan Sanders', 57000),
(66, 'Savannah Price', 69000),
(67, 'Caleb Butler', 62000),
(68, 'Victoria Barnes', 54000),
(69, 'Christian Ross', 72000),
(70, 'Skylar Henderson', 57000),
(71, 'Isaiah Coleman', 72000),
(72, 'Lucy Jenkins', 73000),
(73, 'Thomas Perry', 57000),
(74, 'Paisley Powell', 69000),
(75, 'Charles Long', 62000),
(76, 'Eliana Patterson', 53000),
(77, 'Josiah Hughes', 76000),
(78, 'Aurora Flores', 57000),
(79, 'Hudson Washington', 72000),
(80, 'Violet Price', 58000),
(81, 'Lincoln Bennett', 65000),
(82, 'Stella Wood', 76000),
(83, 'Elias Torres', 54000),
(84, 'Naomi Russell', 72000),
(85, 'Eli Jenkins', 69000),
(86, 'Madison Perry', 64000),
(87, 'Hunter Russell', 60000),
(88, 'Lillian Sullivan', 57000),
(89, 'Maverick Bell', 72000),
(90, 'Aubrey Richardson', 71000),
(91, 'Isaac Price', 80000),
(92, 'Brooklyn Hughes', 67000),
(93, 'Jaxon Wood', 56000),
(94, 'Bella Bailey', 76000),
(95, 'Theodore Powell', 61000),
(96, 'Sophie Bennett', 70000),
(97, 'Asher Murphy', 72000),
(98, 'Hannah Carter', 63000),
(99, 'Ryan Sullivan', 78000),
(100, 'Willow Murphy', 81000);

SELECT * FROM employees;

UPDATE employees SET id = id + 100 WHERE id BETWEEN 1 AND 100;

SELECT * FROM employees;

SELECT SUM(salary) FROM employees;

SELECT AVG(salary) FROM employees;

-- Fetching name, salary of employees whose salaries are above than average

SELECT name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees) ORDER BY salary DESC;

SELECT * FROM employees;

SELECT CONCAT( id, "-", name, "- ", "$", salary ) FROM employees;

SELECT CONCAT("$ ", salary) as salary_in_usd FROM employees;

SELECT name, CONCAT("$", salary) as salary_in_usd FROM employees;
