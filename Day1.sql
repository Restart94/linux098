/*
What is database ?
-- Database is a collection of interrelated data.

Blue  system defined keywords (database,create, select,table)
pink  system defined function ( min, max,sum,avg)
green comments
*/
-- myproject
-- institute -- students , Teacher , subject , hr ,backend,
-- company -- employee, staff, clients,

what is DBMS ?
database management system is software used to create, manage and organize database.

what is RDBMS ?
-- relational database management system -- is a dbms based on the concept of tables (also called relaion)
-- data is organized into tables (also known as relation) with rows (records) and column (attribute).
-- Ex - MySQL, Postgrey, Oracle Etc.

-- SQL server
-- 5 database - sql server, green plum , oracle, my sql , ms sql ,postgray

-- different flabours of RDBMS
-- SQL server - Microsoft
-- SQL Developer - Oracle
-- Tera Data - Teradate
-- DB2 -- IBM
-- mongo db
-- postgrey
-- mySQL etc

-- SQL - Structured Query Language
-- used to store, manipulate and retrieve data from RDBMS.
(its not a database, it is a language used to interact with database)

/*
we use SQL for CRUD operation :

C - create : to create database ,tables, insert tuples in tables etc
R - read,display,retrieve,fetch : to read data present in the database.
u - update : modify already inserted data.
d - delete : delete database, table or specific data point/tuple/row or multiple rows.
*/

Table -- its collection of rows and column

Create database Treenetra_eve_batch
use TREENETRA_EVE_BATCH


select * from [dbo].['Form Responses 1$']

---------------------------------------------------------------------
-- SQL data types
-- Datatypes define the kind of data that can be stored in a column or variable.
1. String
2. numeric 
3. datatime

1. string types of datatype
1. char  -- A-Z to a-z , 0-9, special character (@,$,%,^,&,*,~,.)
-- static memory allocation & its size 8000 character.

-- declare variable datatype
declare @value char(8000) -- 7996
set @value = 'Amit'
print(@value)
print datalength(@value)
print len(@value)
print len(@value) - datalength(@value) --- memory waste

-- 2. varchar : A-Z to a-z , 0-9, special character (@,$,%,^,&,*,~,.) 
-- dynamic memory allocation & its size 8000 character. 
declare @value1 varchar(8000)
set @value1 = 'Amit'
print(@value1)
print datalength(@value1)
print len(@value1)
print len(@value1) - datalength(@value1)

3. -- nchar --static memory allocation & its size 4000 character.(1 char = 2 bytes)
declare @value2 nchar(10) 
set @value2 = 'Amit'
print(@value2)
print datalength(@value2)
print len(@value2)



4. -- nvarchar--  dynamic memory allocation & its size 4000 character.(1 char = 2 bytes)
declare @value1 nvarchar(2)
set @value1 = 'Amit'
print(@value1)
print datalength(@value1)
print len(@value1)

-- numeric data typesdeclare @value1 nvarchar(2)
-- 1. int (-2147483648 to 2147483647)
declare @val int
set @val = 131548
print(@val)
print datalength(@val)
print len(@val)


--Boolean
declare @b bit
set @b = 0000
print(@b)
---------------------------------------------------------------------------------------
declare @first_name varchar(2)
set @first_name = 'Annant'
print(@first_name)
---------------------------------------------------------------------------------------

-- Types of SQL commands

-- DQL --  Data Query language -- its used retrieve/fetch/display/view/read - SELECT
-- DDL -- Data definition language -- its used (create,alter,drop, truncate, Rename)
-- DML -- data manupulation language -- its used to modify the db (INSERT ,UPDATE, DELETE)
-- DCL -- Data control language -- (GRANT, REVOKE)
-- TCL -- tranction control language (commit , rollback, savepoint) 
---------------------------------------------------------------------------------------
--Data types 
numeric  -- int,smallint,tinyint,bigint,money, decimal
 string --  char, varchar ,nchar , varchar ,text
 date and time -- date ,datetime

use Treenetra_eve_batch

--Naming Convention --
student_information 
StudentInfromation
"Student Information"
'Student Information'-- worng way
Student Information -- worng way

String 'pooja'  -- correct way to define string in sQL server
"pooja" or pooja -- wrong 

character datatype -- > store ---> string values only
character -- > A to Z or a to z 
example  name ('pooja','mohan','ram')
Alpha-numeric -- >  A to Z or a to z | 0 to 9  | !#@$%^& 
Example - gmail ('sd12@gmail.com') | ('AT001')
------------------------------------------------------------------------------------
diff between unicode and non- unicode
unicode
-- > nchar
-- > nvarchar
-- > nvarchar(max) = 2 GB
-- > ntext 
-- > when I want to globalized data
-- > its support all culture
-- > 'n' represent all national language 
-- > 1 character = 2 byte

non-unicode
char(size)
varchar(size)
varchar(size) = 2 GB
text
when i want to store localized data
it support english culture
1 charater = 1 byte

-------------------------------------------------------------------------------
-- diff between char and varchar
-- char(size)
-- fixed length datatype
-- static datatype 'ABCD'
-- character and alpha-numeric character
-- non unicode (1 char = 1 byte)
-- 8000 bytes = 8000 character length of the expression
-- draw back (memory waisted)
name char(10)
'Amit' _ _ _ _ _ _ _ _ _ _ _
'Sai'  _ _ _ _ _ _ _ _ _ _ _


-- varchar(size)
-- variable length datatype
-- 'ABCDEFG'= 7 | Dynamic
-- character and alpha-numeric character
-- non unicode (1 char = 1 byte)
-- varchar (size) -- > 8000 byte -- Varchar(max) = 2 GB
-- can save memory
name varchar(10)
'Amit' _ _ _ _ 
'Sai'  _ _ _ 

CREATE Table Student_info(
sid	int,
first_name varchar(50),
last_name varchar(50),
gmail varchar(255),
contact bigint
)
-- to see structure
sp_help Student_info
sp_help "[dbo].[Student_info]"
 
-- read column
SELECT * from Student_info
SELECT first_name,last_name from Student_info

-- CREATE -- > DDL | SELECT -- DQL  | INSERT -- DML

-- to insert the data
-- Method 1
insert into Student_info values(1,'mohan','verma','ms123@gmail.com',9644706119)-- correct way
insert into Student_info values(2,'rohan','verma','rs123@gmail.com',9644706118)-- correct way

-- read 
SELECT * from Student_info
insert into Student_info values('mohan','verma','ms123@gmail.com',9644706119) -- wrong
insert into Student_info values(1,'mohan','verma','ms123@gmail.com',9644706119,'fkjgnk')
-- error - Column name or number of supplied values does not match table definition.


-- Method -2 -- defining  with column name  
insert into Student_info (sid,first_name,contact)values(4,'ppoja',9664256855) --correct
insert into Student_info (sid,first_name,contact)values(4,9664256855) -- wromg
-- error --There are more columns in the INSERT statement than values specified in the VALUES clause. The number of values in the VALUES clause must match the number of columns specified in the INSERT statement.
insert into Student_info (sid,first_name,contact)values('AA001','pooja', 9664256855) -- wromg
-- error Conversion failed when converting the varchar value 'AA001' to data type int.
insert into Student_info (sid,first_name,contact)values(111,'pooja', 9664256855) -- coorect

-- identity(seed, increment)
-- error : There is already an object named 'student_info' in the database.

create table student_info(
sid int identity,
name varchar(50)
)

--
create table student_info1(
sid int identity,
name varchar(50)
)
select * from student_info1
insert student_info1 values ('Annant')
insert student_info1 values (1,'Annant') -- wrong
-- error : An explicit value for the identity column in table 'student_info1' 
-- can only be specified when a column list is used and IDENTITY_INSERT is ON.

SET IDENTITY_INSERT student_info1 ON
insert student_info1 (sid,name)values (9,'Annant')
SET IDENTITY_INSERT student_info1 OFF

sp_help student_info1

--
create table student_info2(
sid int identity(101,1),
name varchar(50)
)
sp_help student_info2
insert into student_info2 values ('RAM')
select * from student_info2

create table student_info4(
sid int identity(100,1),
name varchar(50)
)
------------------------------------------------------------------------------------
-- > working with DDL commands 
-- using create we can create new objects(Table, view, synonym, procedure,function,trigger...etc)
use treenetra_Eve_batch

1. create command

CREATE TABLE EMP
(
EMPID INT IDENTITY(101,1),
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
AGE TINYINT,  -- TINYINT -- RANGE BETWEEN 1 TO 256
SALARY MONEY
)
SELECT * FROM EMP
-- SYNTX TO VIEW STRUCTURE OF THE TABLE <SP_HELP>
SP_HELP EMP

2.. ALTER COMMAND : -- IF WE WANT TO DO ANY MODIFICATION
-- HOW TO CHANGE DATATYPE AND ALSO SIZE OF THE DATATYPES
SYNTX
-- ALTER TABLE TABLE_NAME ALTER COLUMN COLUMN_NAME  DATATYPE(SIZE)

ALTER TABLE EMP ALTER COLUMN EMPID BIGINT
-- Identity column 'EMPID' must be of data type int, bigint, smallint, tinyint, or 
-- decimal or numeric with a scale of 0, unencrypted, and constrained to be nonnullable.

-- HOW TO ADD A NEW COLUMN TO THE TABLES.
SELECT * FROM EMP
-- ALTER TABLE TABLE_NAME ADD COLUMN COLUMN_NAME DATATYPE(SIZE)
ALTER TABLE EMP ADD CONTACT BIGINT
ALTER TABLE EMP ADD ADDRESS VARCHAR(50)

-- HOW TO CHANGE A COLUMN NAME AND TABLE NAME
SP_RENAME 

SP_RENAME 'EMP.EMPID','ID' -- CHANGING THE COLUMN NAME FROM TABLE
SP_RENAME  'EMP','EMP_INFO'-- CHANGE TABLE NAME

SELECT * FROM EMP -- ITS RENAME -- Invalid object name 'EMP'.
SELECT * FROM EMP_INFO -- WITH NEW NAME 



-- HOW TO DROP THE UNWANTED COLUMN FROM TABLE
-- ALTER TABLE TABLE_NAME DROP COLUMN COLUMN_NAME
ALTER TABLE EMP_INFO DROP COLUMN ADDRESS

----------------------------------------------------------------
3. TRUNCATE
SELECT * FROM EMP_INFO

TRUNCATE TABLE EMP_INFO -- IT WILL DELETE ALL ROW AT A TIME.
----------------------------------------------------------------
4. DROP

DROP TABLE EMP_INFO
-- ERROR Invalid object name 'EMP_INFO'.
-------------------------------------------------------------------
-- DML 

-- INSERT
SELECT * FROM EMP
METHOD 1 -- INSERT INTO EMP VALUES('RAM','SHARMA',25,50000)
INSERT INTO EMP VALUES('MOHAN','SHARMA',25,50000)
INSERT INTO EMP VALUES('ROHAN','VERMA',26,60000)
INSERT INTO EMP VALUES('POOJA','PAL',24,70000)
INSERT INTO EMP VALUES('MONA','SHARMA',25,20000)
METHOD -2 
INSERT INTO EMP (FIRST_NAME,SALARY)VALUES('SOHAN',250000)
INSERT INTO EMP (FIRST_NAME,LAST_NAME,SALARY)VALUES('MOHAN','SHARMA',88000)
INSERT INTO EMP (FIRST_NAME,AGE,SALARY)VALUES('JITU',28,96500)
INSERT INTO EMP (FIRST_NAME,LAST_NAME)VALUES('POOJA','VERMA')
INSERT INTO EMP (FIRST_NAME,AGE)VALUES('MONA',29)

SELECT * FROM EMP

-- UPDATE
-- WANT TO UPDATE ALL ROWS AND ANY SPECIFIC ROW FROM THE TABLES.
UPDATE EMP SET LAST_NAME = 'PAL' WHERE EMPID = 106
SELECT * FROM EMP

-- DELETE
DELETE FROM EMP WHERE EMPID = 109
-------------------------------------------------------------------------------------
-- NEXT SEESION 2ND AUG | 3RD AUG | 4TH AUG
-- TASK 
-- CREATE A PROJECT  
-- CRUD -- CREATE AND READ UPDATE DELETE
REF : https://www.mycompiler.io/online-sql-editor
REF : DATATYPE  https://www.w3schools.com/sql/sql_datatypes.asp
-------------------------------------------------------------------------------------

--Que : diff between Alter and Rename 
1. Add column - alter add
2. alter column name data type - alter alter
3. unwanted column remove - alter drop 

table name and database
------------------------------------------------------------------------------------
use [Treenetra_eve_batch]
select * from emp

create schema TCS

create SCHEMA INFOSYS

CREATE TABLE TCS.MANUAL_TEAM(
EMPID INT IDENTITY(101,1),
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
GMAIL VARCHAR(100),
CONTACT BIGINT,
SALARY MONEY,
PROJECT_ID INT,
PROJECT_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50)
)

CREATE TABLE INFOSYS.MANUAL_TEAM(
EMPID INT IDENTITY(101,1),
FIRST_NAME VARCHAR(50) NOT NULL,
LAST_NAME VARCHAR(50) NOT NULL,
GMAIL VARCHAR(100) UNIQUE,
CONTACT BIGINT UNIQUE,
SALARY MONEY,
PROJECT_ID INT,
PROJECT_NAME VARCHAR(100),
DEPARTMENT VARCHAR(50)
)
---------------------------------------------------------------------------------------
-- SQL CONSTRAINTS

1. primary key 
2. foreign key
3. unique key
4. check key
5. default key
6. not null

CREATE SCHEMA ZOMATO -- 

CREATE TABLE ZOMATO.CUSTOMERS(
CUSTOMER_ID INT PRIMARY KEY,
NAME VARCHAR(255),
EMAIL VARCHAR(100)
)

SELECT * FROM ZOMATO.CUSTOMERS
SP_HELP "ZOMATO.CUSTOMERS"

------------foreign key

CREATE TABLE ZOMATO.ORDERS(
ORDERID INT PRIMARY KEY,
CUSTOMER_ID INT,
FOREIGN KEY (CUSTOMER_ID) REFERENCES ZOMATO.CUSTOMERS(CUSTOMER_ID)
)

-- 3. UNIQUE KEY

CREATE TABLE EMPLOYEES(
EMPID INT PRIMARY KEY,
EMAIL VARCHAR(255) UNIQUE
)

-- 

4. CHECK KEY 

CREATE TABLE PEOPLE
(
PID INT PRIMARY KEY,
AGE TINYINT CHECK(AGE > 18)
)


DEFAULT 

CREATE TABLE CUSTOMER(
CID INT PRIMARY KEY,
COUNTRY VARCHAR(255) DEFAULT 'INDIA'
)


NOT NULL

CREATE TABLE CUSTOMER1(
CID INT PRIMARY KEY,
NAME VARCHAR(255) NOT NULL
)

---------------------------------------------------------------
USE Treenetra_eve_batch
INFORMATION_SCHEMA

-- contains several viewa that provide information about the database including tables,columns, referential_ constraints.

--LISTS ALL TABLE IN THE DB
SELECT * FROM INFORMATION_SCHEMA.TABLES
SELECT count(*) FROM INFORMATION_SCHEMA.TABLES

-- LIST ALL COLUMN IN THE TABLE
SELECT count(*) FROM INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'EMP'

-- lists all foregin key contraints in the db.

select * from INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS
where CONSTRAINT_SCHEMA = 'zomato'

--------------------------------------------------------------------------
-- SQL server Operators

-- 1. Arithmetic operator
SELECT 25+23 AS ADDITION
SELECT 25-23 AS sUB
SELECT 25*23 AS MUL
SELECT 25/23 AS DIV
SELECT 25%5 AS PREC
SELECT 2^3 AS "SQURE ROOT"


-- 2. comparison operator
SELECT * FROM EMP
-- = (EQUAL TO)
-- <> (NOT EQUAL TO)
-- > (GREATER THAN)
-- < (LESS THAN)
-- >= (GREATER THAN OR EQUAL TO)
-- <= (LESS THAN OR EQUAL TO )

SELECT * FROM EMP WHERE AGE = 25
SELECT * FROM EMP WHERE AGE <> 25
SELECT * FROM EMP WHERE AGE > 25
SELECT * FROM EMP WHERE AGE < 25
SELECT * FROM EMP WHERE AGE >= 25
SELECT * FROM EMP WHERE AGE <= 25

-- 3. logical operator

1. AND
0 = FALSE | 1 TRUE

0 0 0   select * from emp where age=80 and state='USA'
0 1 0	select * from emp where age=80 and state='INDIA'
1 0 0   select * from emp where age=25 and state='USA'
1 1 1   select * from emp where age=25 and state='INDIA'

SELECT * FROM EMP
alter table emp add state varchar(50)
update emp set state = 'INDIA'


2. OR(addition)
0 0 0
0 1 1
1 0 1
1 1 1


select * from emp where age=80 or state='USA'
select * from emp where age=80 or state='INDIA'
select * from emp where age=25 or state='USA'
select * from emp where age=25 or state='INDIA'


3. NOT
select * from emp where age > 25

select * from emp where Not age > 25



4. string operator
1. '+'
select * from emp
select first_name,last_name from emp
select first_name+ ' ' +last_name from emp
select first_name+ ' ' +last_name as fullname from emp

2. LIKE (pattern matching) -- % | _
select * from emp where first_name Like 'm%'
select * from emp where first_name Like '%m'
select * from emp where first_name Like '%m%'
select * from emp where first_name Like '_o%'

3. NOT LIKE (pattern not matching)


-- 5. bitwise operator
-- & (bitwise and)
-- |  (bitwise or)
-- ^  bitwise Xor
-- ~ (bitwise not)

select ~5 

6. Assignment operator
-- = assignment 
-- += addition assignment
-- -= substraction assignment
-- *= mul assign
-- /= div assign
-- %=  modulus assignment

declare @x int
set @x = 5 + 3
print(@x)


7. others operators 
-- IS null (check for null)
select * from emp where age IS null
-- IS NOT NULL (CHECK FOR NOT NULL)
select * from emp where age IS not null
-- IN (CHECK FOR EXISTENCE IN A LIST)
select * from emp where age in(25,26)
-- NOT IN (CHECK FOR NON-EXISTENCE IN A LIST)
select * from emp where age not in(25,26,28)
-- BETWEEN (CHECK FOR EXISTENCE IN A RANGE)
select * from emp where age between 24 and 30
-- NOT BETWEEN (CHECK FOR NON-EXISTENCE IN A RANGE)
select * from emp where age not between 25 and 26  

--------------------------------------------------------------------------------





































 


























