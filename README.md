# Real vs Fake Job Posting Analysis

## Project Overview
The **Real vs Fake Job Posting Analysis** project investigates patterns in online job advertisements to identify characteristics commonly associated with fraudulent job postings.

With the rapid growth of online job platforms, fraudulent job advertisements have become a significant issue for job seekers. These fake postings may request sensitive personal information or attempt to scam applicants.

This project analyzes job listing data to detect indicators of job fraud using **SQL for data analysis** and **Power BI for data visualization**.

---

## Tools & Technologies Used

- SQL
- Python (Pandas, NumPy)
- Jupyter Notebook
- Power BI
- Data Analysis
- Data Visualization

---

## Dataset Summary

The dataset contains job posting information collected from online job platforms.

Total Records: **17,880 job postings**

Key Columns:

- **job_id** – Unique identifier for job postings  
- **salary_range** – Salary information in the listing  
- **employment_type** – Full-time, Part-time, Contract, etc.  
- **telecommuting** – Indicates remote work availability  
- **has_company_logo** – Indicates if company logo is present  
- **industry** – Industry category  
- **required_education** – Minimum education requirement  
- **fraudulent** – Target variable  
  - 0 = Real Job  
  - 1 = Fake Job  

Dataset Source:  
https://www.kaggle.com/datasets/shivamb/real-or-fake-fake-jobposting-prediction

---

## SQL Data Analysis

SQL queries were used to analyze patterns in fraudulent job postings.

Example queries used in the project:

```sql
SELECT COUNT(*) AS total_jobs
FROM job_postings;

SELECT fraudulent, COUNT(*)
FROM job_postings
GROUP BY fraudulent;

SELECT ROUND(
SUM(CASE WHEN fraudulent = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*),2)
AS fake_percentage
FROM job_postings;
