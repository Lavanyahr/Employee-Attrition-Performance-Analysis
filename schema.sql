CREATE TABLE employees (
employee_id INT PRIMARY KEY,
name VARCHAR(100),
department VARCHAR(50),
role VARCHAR(50),
salary INT,
experience_years INT,
joining_date DATE
);

CREATE TABLE performance_reviews (
review_id INT PRIMARY KEY,
employee_id INT,
rating INT,
review_date DATE,
FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);


CREATE TABLE attrition (
employee_id INT,
exit_date DATE,
exit_reason VARCHAR(100),
FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);


INSERT INTO employees VALUES
(1,'Anita','IT','Developer',60000,4,'2022-06-10'),
(2,'Rahul','HR','HR Executive',40000,3,'2021-04-15'),
(3,'Sneha','IT','Tester',45000,2,'2021-01-20'),
(4,'Vikram','Finance','Analyst',55000,6,'2018-08-05'),
(5,'Pooja','IT','Developer',50000,5,'2019-09-12');


INSERT INTO performance_reviews VALUES
(101,1,4,'2026-06-01'),
(102,2,3,'2026-06-01'),
(103,3,2,'2026-06-01'),
(104,4,5,'2026-06-01'),
(105,5,4,'2026-06-01');


INSERT INTO attrition VALUES
(2,'2025-12-01','Better Opportunity'),
(3,'2025-11-15','Work Pressure');
