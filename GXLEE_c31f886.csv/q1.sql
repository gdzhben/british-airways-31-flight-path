SELECT last_name,first_name FROM employees.employees order by rand() limit 10;/* Q1.1*/

SELECT * from employees.employees where employees.emp_no = 20000;/* Q1.2*/

SELECT * FROM employees.employees where employees.gender = 'F' AND (employees.first_name like 'Q%' AND employees.last_name like 'Z%');/* Q1.3*/

SELECT COUNT(emp_no),employees.gender FROM employees.employees group by employees.gender; /* Q1.4*/

SELECT first_name, last_name from employees.employees where employees.emp_no = (SELECT emp_no FROM employees.salaries order by salaries.salary DESC LIMIT 1); /* Q1.5*/

SELECT title,first_name,last_name   /* Q1.6*/
FROM employees.titles
INNER JOIN employees.employees ON titles.emp_no=employees.emp_no
WHERE first_name ='Becky' or last_name = 'Becky';

SELECT SUM(salary) FROM employees.salaries;/* Q1.7*/

