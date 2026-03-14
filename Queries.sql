--1. Total jobs
SELECT COUNT(*)AS total_jobs 
FROM job_postings;

--2. Real vs Fake job counts
SELECT fraudulent, COUNT(*) AS count
FROM job_postings
GROUP BY fraudulent;

--3. Percentage of fake jobs
SELECT ROUND(
SUM(CASE WHEN fraudulent = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*),2)
AS fake_percentage
FROM job_postings;

--4. Fake jobs with no salary
SELECT COUNT(*)
FROM job_postings
WHERE fraudulent=1 AND salary_range='Not Disclosed';

--5. Fake jobs and company logo
SELECT has_company_logo, COUNT(*)
FROM job_postings
WHERE fraudulent=1
GROUP BY has_company_logo;

--6. Fake jobs & Telecommuting
SELECT telecommuting, COUNT(*)
FROM job_postings
WHERE fraudulent=1
GROUP BY telecommuting;

--7. Employment Type vs Fraud
SELECT employment_type, COUNT(*)
FROM job_postings
WHERE fraudulent=1
GROUP BY employment_type
ORDER BY COUNT(*) DESC;

--8. Industry with most fake jobs 
SELECT industry, COUNT(*)
FROM job_postings
WHERE fraudulent=1
GROUP BY industry
ORDER BY COUNT(*) DESC
LIMIT 5;

--9. Education requirement pattern 
SELECT required_education, COUNT(*)
FROM job_postings
WHERE fraudulent=1
GROUP BY required_education
ORDER BY COUNT(*) DESC;

--10. Fraud Concentration % by Employment Type 
SELECT employment_type, COUNT(*) AS total_jobs,
SUM(CASE WHEN fraudulent=1 THEN 1 ELSE 0 END) AS fake_jobs,
ROUND(SUM(CASE WHEN fraudulent=1 THEN 1 ELSE 0 END)*100.0/COUNT(*),2)
AS fraud_percentage
FROM job_postings
GROUP BY employment_type
HAVING COUNT(*)>100
ORDER BY fraud_percentage DESC;

