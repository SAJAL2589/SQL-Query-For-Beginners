create database mydatabase;
use mydatabase;
create table employee ( 
ecode int primary key ,ename char(20) , sex char(1) ,grade char(2), gross decimal);
INSERT into employee (ecode,ename,sex,grade,gross) Values (
1006,'Hari','M','E8',4500.00);
# Making Simple Queries Through Select Command
# Selecting all data
Select * from employee;
# Select particular rows
Select * from employee where sex = 'M';
# Select particular columns
Select ecode , ename from employee where sex = 'M';
# Eliminating Redundant Data
Select DISTINCT grade from employee ;
# Selecting From all the rows
Select ALL grade FROM employee where gross > 4000;
# Viewing Structure of a Table
DESC employee;
# Performing Simple Calculations 
Select 4*3-2;
# Using Column Alias 
Select ecode AS Employee_Code from employee;
# Condition Based on a Range
Select ecode,ename FROM employee Where gross BETWEEN 4000 AND 6000;
# Condition Based on a List
Select ecode,ename FROM employee where grade IN ('E5','E6','E8');
# Condition Based on Pattern Matches
Select ecode,ename FROM employee where ename LIKE 'H%'; # Names start with 'H' letter 
Select ecode ,ename FROM employee where ename LIKE '_a%'; # Names having second letter 'a'.
# Searching for NULL
Select ecode ,ename FROM employee where grade IS Null;
