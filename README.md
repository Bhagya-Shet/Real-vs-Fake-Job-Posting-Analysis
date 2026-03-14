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

The analysis focused on:

Real vs Fake job distribution

Fraudulent jobs without salary disclosure

Fraud patterns by industry

Telecommuting and fraud correlation

Education requirements in fake postings

Power BI Dashboard

An interactive Power BI dashboard was created to visualize fraud patterns.

Dashboard includes:

Total Job Postings KPI

Fake Job Percentage

Real vs Fake Job Distribution

Fake Jobs Without Salary Disclosure

Fraud Percentage by Employment Type

Fake Jobs by Industry

Fake Jobs by Telecommuting

Education Requirement Patterns

Key Insights

Key insights discovered from the analysis:

Only a small percentage of job postings are fraudulent.

Fake job postings often do not disclose salary information.

Listings without company logos show higher fraud probability.

Certain industries have higher concentrations of fake jobs.

Some remote job listings may be associated with fraudulent activity.

These insights highlight the importance of verifying job advertisements before applying.

Project Files

Repository contains:

SQL queries used for analysis

Jupyter Notebook for data exploration

Power BI dashboard file

Project report

Dashboard screenshot

The dataset is not included to avoid data duplication and large file size.

Dataset can be downloaded from Kaggle:
https://www.kaggle.com/datasets/shivamb/real-or-fake-fake-jobposting-prediction

Conclusion

This project demonstrates how data analytics techniques can be used to detect patterns in fraudulent job postings.

By combining SQL data analysis with Power BI visualization, it becomes easier to identify suspicious listings and understand key indicators of job fraud.
