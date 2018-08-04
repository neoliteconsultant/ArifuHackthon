#Delete duplicate data from table so that only first data remains constant.

DELETE FROM managers WHERE id IN ( SELECT id FROM (SELECT m1.id FROM managers m1 INNER JOIN managers m2 
ON m1.fname = m2.fname AND m1.salary = m2.salary WHERE m1.id > m2.id) m)

#Name of Customers where First Name, Second Name and Last Name is given in table
SELECT * FROM customers WHERE fname is not null and sname is not null and lname is not null 

#A list of all 6 customers names, without NULL values
SELECT COALESCE (`fname`,`sname`,`lname`) as customer_name FROM customers


# Employees who were hired in the Last 1 to 5 months
SELECT *
FROM employees
Where TIMESTAMPDIFF(MONTH, hiredate, now()) Between 1 and 5

# Employees who were hired in the Last 1 to 100 days
SELECT *
FROM employees
Where TIMESTAMPDIFF(DAY, hiredate, now()) Between 1 and 100

# Employees who were hired in the Last 1 to 4 years
SELECT *
FROM employees
Where TIMESTAMPDIFF(YEAR, hiredate, now()) Between 1 and 4

#all fnames that start with letter A
SELECT *
FROM employees
Where fname LIKE 'A%'