
--1. Total Employees
SELECT COUNT(*) AS total_employees FROM hr_data;
--2. Attrition Rate
SELECT 
    (SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS attrition_rate
FROM hr_data;
--3. Avg Salary by Department
SELECT department, AVG(salary) 
FROM hr_data
GROUP BY department;

--4. High Risk Employees
SELECT *
FROM hr_data
WHERE satisfaction < 3 AND performance < 3;