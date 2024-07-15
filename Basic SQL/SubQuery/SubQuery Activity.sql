--1. Show employees who have salary greater than basic salary
SELECT lastName, firstName, salary
FROM employees
WHERE salary > (SELECT max(basicSalary) FROM jobs);

--2. Show all employees whose job type (JobID) is held by exactly three employees. 
SELECT *
FROM employees as em
WHERE 3 = (SELECT count(*)
	FROM employees WHERE em.jobId = employees.JobID);

--3. Show the job titles and basic salay for all job types where
-- there is at least one employee with a salary greater than 10,000,000.
SELECT jobTitle, basicSalary FROM jobs
WHERE jobID = ANY 
	(SELECT JobID FROM employees WHERE salary>10000000);

--4. Show the job titles and basic salaries for all job types where
-- no employee has a salary greater than 10,000,000.
SELECT jobTitle, basicSalary FROM jobs
WHERE jobID NOT IN 
	(SELECT JobID FROM employees WHERE salary>10000000);

--5. Show the job titles and basic salaries for all job types where 
-- the job ID is not equal to any job ID that has at least one employee 
-- with a salary greater than 10,000,000. 
SELECT jobTitle, basicSalary FROM jobs
WHERE jobID <> ANY 
	(SELECT JobID FROM employees WHERE salary>10000000);

--6. Show job titles and basic salaries for all job types where 
-- the job ID is greater than all job IDs associated with employees who have a salary greater than 10,000,000.
SELECT jobTitle, basicSalary FROM jobs
WHERE jobID > ALL
	(SELECT JobID FROM employees WHERE salary>10000000);

--7. Show employees whose salary is less than 110% of their job's basic salary
SELECT firstName, lastName, jobID, salary
FROM employees
WHERE EXISTS 
	(SELECT jobID FROM jobs
	WHERE employees.jobID = jobs.jobID AND employees.salary < 1.1*jobs.basicSalary);

--8. Show employees whose job ID does not exist in the jobs table
SELECT firstName, lastName, jobID, salary
FROM employees
WHERE NOT EXISTS 
	(SELECT jobID FROM jobs
	WHERE employees.jobID = jobs.jobID);

--9. Show the job title, basic salary, and recent salary for jobs where
-- the recent salary (the salary of an employee) is greater than 10,000,000
SELECT basic, recent, title
FROM 
	(SELECT jo.basicSalary as basic, em.salary as recent, jo.jobTitle as title
	FROM jobs as jo
	INNER JOIN employees as em
	ON jo.jobID = em.jobID) as salaryJob
WHERE recent>10000000;

--10. Subquery INSERT
INSERT INTO jobs(jobTitle, basicSalary)
VALUES ('Vice President', (SELECT 1.25*max(salary) from employees));

--11. Subquery UPDATE
UPDATE jobs
SET basicSalary = (
	SELECT 0.1*min(salary)
	FROM employees)
WHERE basicSalary = 0 AND 
	jobID IN (SELECT DISTINCT jobID FROM employees);

SELECT * FROM jobs;