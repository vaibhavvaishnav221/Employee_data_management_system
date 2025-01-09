# Employee Data Management System 🧑‍🔧
This is an employee data management system where we will create a database named "warehouse" which will show the information of all the employees that are working in our warehouse and in that database, we wil create a table named employees where the data will be stored in structured and tabular format and the table will have 3 columns named id, name and salary.

## Setup ⚙️🛠️📦
First of all delete the existing database in your system if it is named warehouse by using the query:

```
"DROP DATABASE IF EXISTS warehouse;
```

Write the code in your MySQL Workbench which will create a database named warehouse that we will be using in this project:

```
CREATE DATABASE warehouse;
```

Now in order to use the current database named warehouse write the code "USE warehouse;". This will query will make sure that you are doing the work inside the database named warehouse.

### Working with database
Now when you have selected the database you want to work with that is in our case database named "warehouse", we will start creating the table named employees.

### 1. Create a table named employees
In order to create a table named employees you write the query as follows:

```
CREATE TABLE employees
(   
    id INT PRIMARY KEY, 
    name VARCHAR(50), 
    salary INT 
);
```
Here, in this table there are 3 columns named id that has datatype integer, name that has datatype varchar and salary that thas datatype integer, the datatypes make sure that data in these tables can only be put of the given types like the salary can't be David and name can't be 60000.

Now after creating the table you may also wanna see how many tables do you have in your database, you can see them by writing this query:

```
SHOW TABLES;
```

Running this query will give you the following results:

| Tables_in_warehouse |
|---------------------|
| employees           |

Now, if you want to check the structure of your table named employees, you write the following query:

```
DESC employees;
```

This will give you the schema of your table that includes the name of all your columns and their datatypes and as well as their constraints which will look like this:

| Field  | Type        | Null | Key | Default | Extra |
|--------|-------------|------|-----|---------|-------|
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(50) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |

### 3. Insert data into employees table
After creating the table named employees, we have to insert the data into it by writing the query as follows:

```
INSERT INTO employees
(
    id, 
    name, 
    salary
)
    VALUES
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

```

This will insert all the data we got from our operations in warehouse into employees table.

### 3. Fetching the data from employees table

In order to see the entire data in the employees table, we write the following query:

```
SELECT * FROM employees;
```

The result you will get after writing this query will look like this:

| id  | name               | salary |
|-----|--------------------|--------|
|   1 | Liam Smith         |  55000 |
|   2 | Emma Johnson       |  62000 |
|   3 | Noah Williams      |  58000 |
|   4 | Olivia Brown       |  70000 |
|   5 | Ava Jones          |  65000 |
|   6 | William Garcia     |  50000 |
|   7 | Sophia Miller      |  72000 |
|   8 | James Davis        |  63000 |
|   9 | Isabella Rodriguez |  67000 |
|  10 | Benjamin Martinez  |  59000 |
|  11 | Lucas Hernandez    |  71000 |
|  12 | Mia Lopez          |  74000 |
|  13 | Mason Gonzalez     |  76000 |
|  14 | Charlotte Wilson   |  54000 |
|  15 | Ethan Moore        |  78000 |
|  16 | Amelia Taylor      |  60000 |
|  17 | Alexander Anderson |  82000 |
|  18 | Harper Thomas      |  58000 |
|  19 | Elijah Martin      |  79000 |
|  20 | Evelyn Thompson    |  53000 |
|  21 | Daniel White       |  68000 |
|  22 | Avery Harris       |  72000 |
|  23 | Matthew Clark      |  55000 |
|  24 | Ella Lewis         |  62000 |
|  25 | Jackson Young      |  59000 |
|  26 | Scarlett Hall      |  70000 |
|  27 | Sebastian Walker   |  67000 |
|  28 | Victoria Allen     |  74000 |
|  29 | David King         |  51000 |
|  30 | Aria Wright        |  60000 |
|  31 | Joseph Scott       |  75000 |
|  32 | Abigail Green      |  70000 |
|  33 | Samuel Baker       |  66000 |
|  34 | Grace Adams        |  73000 |
|  35 | Carter Nelson      |  67000 |
|  36 | Chloe Mitchell     |  51000 |
|  37 | Owen Parker        |  64000 |
|  38 | Natalie Roberts    |  68000 |
|  39 | Dylan Carter       |  56000 |
|  40 | Lily Phillips      |  75000 |
|  41 | Henry Campbell     |  79000 |
|  42 | Hannah Edwards     |  62000 |
|  43 | Julian Turner      |  68000 |
|  44 | Zoe Collins        |  59000 |
|  45 | Jack Stewart       |  71000 |
|  46 | Leah Sanchez       |  53000 |
|  47 | Gabriel Morris     |  75000 |
|  48 | Eleanor Rogers     |  56000 |
|  49 | Wyatt Reed         |  70000 |
|  50 | Addison Cook       |  60000 |
|  51 | Luke Morgan        |  72000 |
|  52 | Penelope Bell      |  63000 |
|  53 | Isaac Bailey       |  50000 |
|  54 | Layla Cooper       |  81000 |
|  55 | Anthony Richardson |  77000 |
|  56 | Camila Cox         |  75000 |
|  57 | Grayson Howard     |  71000 |
|  58 | Nora Ward          |  73000 |
|  59 | Andrew Torres      |  70000 |
|  60 | Hazel Peterson     |  66000 |
|  61 | Levi Gray          |  55000 |
|  62 | Zoey Ramirez       |  61000 |
|  63 | Aaron James        |  75000 |
|  64 | Riley Brooks       |  73000 |
|  65 | Nathan Sanders     |  57000 |
|  66 | Savannah Price     |  69000 |
|  67 | Caleb Butler       |  62000 |
|  68 | Victoria Barnes    |  54000 |
|  69 | Christian Ross     |  72000 |
|  70 | Skylar Henderson   |  57000 |
|  71 | Isaiah Coleman     |  72000 |
|  72 | Lucy Jenkins       |  73000 |
|  73 | Thomas Perry       |  57000 |
|  74 | Paisley Powell     |  69000 |
|  75 | Charles Long       |  62000 |
|  76 | Eliana Patterson   |  53000 |
|  77 | Josiah Hughes      |  76000 |
|  78 | Aurora Flores      |  57000 |
|  79 | Hudson Washington  |  72000 |
|  80 | Violet Price       |  58000 |
|  81 | Lincoln Bennett    |  65000 |
|  82 | Stella Wood        |  76000 |
|  83 | Elias Torres       |  54000 |
|  84 | Naomi Russell      |  72000 |
|  85 | Eli Jenkins        |  69000 |
|  86 | Madison Perry      |  64000 |
|  87 | Hunter Russell     |  60000 |
|  88 | Lillian Sullivan   |  57000 |
|  89 | Maverick Bell      |  72000 |
|  90 | Aubrey Richardson  |  71000 |
|  91 | Isaac Price        |  80000 |
|  92 | Brooklyn Hughes    |  67000 |
|  93 | Jaxon Wood         |  56000 |
|  94 | Bella Bailey       |  76000 |
|  95 | Theodore Powell    |  61000 |
|  96 | Sophie Bennett     |  70000 |
|  97 | Asher Murphy       |  72000 |
|  98 | Hannah Carter      |  63000 |
|  99 | Ryan Sullivan      |  78000 |
| 100 | Willow Murphy      |  81000 |

### 4. Fetching specific columns from employees table
You can fetch specififc column from employees table by writing the following query:

```
SELECT COLUMN_1, COLUMN_2, COLUMN_3 FROM employees;
```

Like imagine you only want to fetch the name and salary from the employees table, for that you write the following query:

```
SELECT name, salary FROM employees;
```

This will give you the following result

| name               | salary |
|--------------------|--------|
| Liam Smith         |  55000 |
| Emma Johnson       |  62000 |
| Noah Williams      |  58000 |
| Olivia Brown       |  70000 |
| Ava Jones          |  65000 |
| William Garcia     |  50000 |
| Sophia Miller      |  72000 |
| James Davis        |  63000 |
| Isabella Rodriguez |  67000 |
| Benjamin Martinez  |  59000 |
| Lucas Hernandez    |  71000 |
| Mia Lopez          |  74000 |
| Mason Gonzalez     |  76000 |
| Charlotte Wilson   |  54000 |
| Ethan Moore        |  78000 |
| Amelia Taylor      |  60000 |
| Alexander Anderson |  82000 |
| Harper Thomas      |  58000 |
| Elijah Martin      |  79000 |
| Evelyn Thompson    |  53000 |
| Daniel White       |  68000 |
| Avery Harris       |  72000 |
| Matthew Clark      |  55000 |
| Ella Lewis         |  62000 |
| Jackson Young      |  59000 |
| Scarlett Hall      |  70000 |
| Sebastian Walker   |  67000 |
| Victoria Allen     |  74000 |
| David King         |  51000 |
| Aria Wright        |  60000 |
| Joseph Scott       |  75000 |
| Abigail Green      |  70000 |
| Samuel Baker       |  66000 |
| Grace Adams        |  73000 |
| Carter Nelson      |  67000 |
| Chloe Mitchell     |  51000 |
| Owen Parker        |  64000 |
| Natalie Roberts    |  68000 |
| Dylan Carter       |  56000 |
| Lily Phillips      |  75000 |
| Henry Campbell     |  79000 |
| Hannah Edwards     |  62000 |
| Julian Turner      |  68000 |
| Zoe Collins        |  59000 |
| Jack Stewart       |  71000 |
| Leah Sanchez       |  53000 |
| Gabriel Morris     |  75000 |
| Eleanor Rogers     |  56000 |
| Wyatt Reed         |  70000 |
| Addison Cook       |  60000 |
| Luke Morgan        |  72000 |
| Penelope Bell      |  63000 |
| Isaac Bailey       |  50000 |
| Layla Cooper       |  81000 |
| Anthony Richardson |  77000 |
| Camila Cox         |  75000 |
| Grayson Howard     |  71000 |
| Nora Ward          |  73000 |
| Andrew Torres      |  70000 |
| Hazel Peterson     |  66000 |
| Levi Gray          |  55000 |
| Zoey Ramirez       |  61000 |
| Aaron James        |  75000 |
| Riley Brooks       |  73000 |
| Nathan Sanders     |  57000 |
| Savannah Price     |  69000 |
| Caleb Butler       |  62000 |
| Victoria Barnes    |  54000 |
| Christian Ross     |  72000 |
| Skylar Henderson   |  57000 |
| Isaiah Coleman     |  72000 |
| Lucy Jenkins       |  73000 |
| Thomas Perry       |  57000 |
| Paisley Powell     |  69000 |
| Charles Long       |  62000 |
| Eliana Patterson   |  53000 |
| Josiah Hughes      |  76000 |
| Aurora Flores      |  57000 |
| Hudson Washington  |  72000 |
| Violet Price       |  58000 |
| Lincoln Bennett    |  65000 |
| Stella Wood        |  76000 |
| Elias Torres       |  54000 |
| Naomi Russell      |  72000 |
| Eli Jenkins        |  69000 |
| Madison Perry      |  64000 |
| Hunter Russell     |  60000 |
| Lillian Sullivan   |  57000 |
| Maverick Bell      |  72000 |
| Aubrey Richardson  |  71000 |
| Isaac Price        |  80000 |
| Brooklyn Hughes    |  67000 |
| Jaxon Wood         |  56000 |
| Bella Bailey       |  76000 |
| Theodore Powell    |  61000 |
| Sophie Bennett     |  70000 |
| Asher Murphy       |  72000 |
| Hannah Carter      |  63000 |
| Ryan Sullivan      |  78000 |
| Willow Murphy      |  81000 |

Here in this, we have filtered data column wise like what column you want in your table and which ones you don't

Similary, you can also filter the data row wise like which employees have salary > 60000:

In order to do this we use "WHERE" clause 

Let's take a look at an example:

Write the query:

```
SELECT * FROM employees WHERE salary > 60000;
```

This will select all the rows where salary is greater than 60000.

The result will be following:

| id  | name               | salary |
|-----|--------------------|--------|
|   2 | Emma Johnson       |  62000 |
|   4 | Olivia Brown       |  70000 |
|   5 | Ava Jones          |  65000 |
|   7 | Sophia Miller      |  72000 |
|   8 | James Davis        |  63000 |
|   9 | Isabella Rodriguez |  67000 |
|  11 | Lucas Hernandez    |  71000 |
|  12 | Mia Lopez          |  74000 |
|  13 | Mason Gonzalez     |  76000 |
|  15 | Ethan Moore        |  78000 |
|  17 | Alexander Anderson |  82000 |
|  19 | Elijah Martin      |  79000 |
|  21 | Daniel White       |  68000 |
|  22 | Avery Harris       |  72000 |
|  24 | Ella Lewis         |  62000 |
|  26 | Scarlett Hall      |  70000 |
|  27 | Sebastian Walker   |  67000 |
|  28 | Victoria Allen     |  74000 |
|  31 | Joseph Scott       |  75000 |
|  32 | Abigail Green      |  70000 |
|  33 | Samuel Baker       |  66000 |
|  34 | Grace Adams        |  73000 |
|  35 | Carter Nelson      |  67000 |
|  37 | Owen Parker        |  64000 |
|  38 | Natalie Roberts    |  68000 |
|  40 | Lily Phillips      |  75000 |
|  41 | Henry Campbell     |  79000 |
|  42 | Hannah Edwards     |  62000 |
|  43 | Julian Turner      |  68000 |
|  45 | Jack Stewart       |  71000 |
|  47 | Gabriel Morris     |  75000 |
|  49 | Wyatt Reed         |  70000 |
|  51 | Luke Morgan        |  72000 |
|  52 | Penelope Bell      |  63000 |
|  54 | Layla Cooper       |  81000 |
|  55 | Anthony Richardson |  77000 |
|  56 | Camila Cox         |  75000 |
|  57 | Grayson Howard     |  71000 |
|  58 | Nora Ward          |  73000 |
|  59 | Andrew Torres      |  70000 |
|  60 | Hazel Peterson     |  66000 |
|  62 | Zoey Ramirez       |  61000 |
|  63 | Aaron James        |  75000 |
|  64 | Riley Brooks       |  73000 |
|  66 | Savannah Price     |  69000 |
|  67 | Caleb Butler       |  62000 |
|  69 | Christian Ross     |  72000 |
|  71 | Isaiah Coleman     |  72000 |
|  72 | Lucy Jenkins       |  73000 |
|  74 | Paisley Powell     |  69000 |
|  75 | Charles Long       |  62000 |
|  77 | Josiah Hughes      |  76000 |
|  79 | Hudson Washington  |  72000 |
|  81 | Lincoln Bennett    |  65000 |
|  82 | Stella Wood        |  76000 |
|  84 | Naomi Russell      |  72000 |
|  85 | Eli Jenkins        |  69000 |
|  86 | Madison Perry      |  64000 |
|  89 | Maverick Bell      |  72000 |
|  90 | Aubrey Richardson  |  71000 |
|  91 | Isaac Price        |  80000 |
|  92 | Brooklyn Hughes    |  67000 |
|  94 | Bella Bailey       |  76000 |
|  95 | Theodore Powell    |  61000 |
|  96 | Sophie Bennett     |  70000 |
|  97 | Asher Murphy       |  72000 |
|  98 | Hannah Carter      |  63000 |
|  99 | Ryan Sullivan      |  78000 |
| 100 | Willow Murphy      |  81000 |

That's enough for today, we will learn more in some other project.

Vaibhav Vaishnav  
vaibhavvaishnav221@gmail.com  
+91 6367340050
