-- 1. Total Employees per Department

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;


-- 2. Average Salary by Role

SELECT role, AVG(salary) AS avg_salary
FROM employees
GROUP BY role;


-- 3. Attrition Rate by Department

SELECT e.department,
COUNT(a.employee_id) AS employees_left
FROM employees e
LEFT JOIN attrition a ON e.employee_id = a.employee_id
GROUP BY e.department;


-- 4. Performance Rating of Employees Who Left

SELECT e.name, p.rating
FROM employees e
JOIN performance_reviews p ON e.employee_id = p.employee_id
JOIN attrition a ON e.employee_id = a.employee_id;


-- 5. High Performers with Low Salary

SELECT e.name, p.rating, e.salary
FROM employees e
JOIN performance_reviews p ON e.employee_id = p.employee_id
WHERE p.rating >= 4 AND e.salary < 50000;
