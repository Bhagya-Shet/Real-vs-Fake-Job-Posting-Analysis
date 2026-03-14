# Real vs Fake Job Posting Analysis

## Project Overview

The **Real vs Fake Job Posting Analysis** project investigates patterns in online job advertisements to identify characteristics commonly associated with fraudulent job postings.

With the rapid growth of online job platforms, fraudulent job advertisements have become a significant issue for job seekers. These fake postings may request sensitive personal information or attempt to scam applicants.

This project analyzes job listing data to detect indicators of job fraud using **SQL for data analysis**, **Python for data preprocessing**, and **Power BI for interactive visualization**.

---

## Tools & Technologies Used

* SQL
* Python (Pandas, NumPy)
* Jupyter Notebook
* Power BI
* Data Analysis
* Data Visualization

---

## Dataset Summary

The dataset used for this project contains job posting information collected from online job platforms.

**Total Records:** 17,880 job postings

### Key Columns

* **job_id** – Unique identifier for each job posting
* **salary_range** – Salary information provided in the listing
* **employment_type** – Type of job (Full-time, Part-time, Contract, etc.)
* **telecommuting** – Indicates whether the job allows remote work
* **has_company_logo** – Indicates whether a company logo is included
* **industry** – Industry category of the job posting
* **required_education** – Minimum education requirement for the role
* **fraudulent** – Target variable

  * **0 = Real Job**
  * **1 = Fake Job**

### Dataset Source

Kaggle Dataset:
https://www.kaggle.com/datasets/shivamb/real-or-fake-fake-jobposting-prediction

The dataset is not included in this repository to avoid large file size and duplication. It can be downloaded directly from Kaggle.

---

## Data Analysis Using SQL

SQL queries were used to analyze patterns and characteristics associated with fraudulent job postings.

Key analysis tasks included:

* Counting total job postings
* Identifying real vs fake job distribution
* Calculating the percentage of fraudulent jobs
* Detecting fake jobs without salary disclosure
* Examining fraud patterns by employment type and industry
* Understanding education requirements in fraudulent listings

### Example SQL Queries

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
```

Additional queries were used to analyze relationships between fraud and attributes such as salary disclosure, company logo presence, telecommuting options, and employment type.

---

## Power BI Dashboard

An interactive **Power BI dashboard** was developed to visualize fraud patterns in job postings.

### Dashboard Components

* Total Job Postings KPI
* Fake Job Percentage KPI
* Fake Jobs Without Salary Disclosure
* Real vs Fake Job Distribution
* Fraud Percentage by Employment Type
* Fake Jobs by Industry
* Fake Jobs by Telecommuting Option
* Education Requirement Distribution in Fraudulent Jobs

---

## Key Insights

The analysis revealed several insights related to fraudulent job postings:

* A **small percentage of total job postings were fraudulent**.
* Many **fake job listings do not disclose salary information**.
* Job postings **without company logos have a higher probability of being fraudulent**.
* Certain **industries show higher concentrations of fake job postings**.
* Some **remote job listings may be associated with fraudulent activity**.

These insights highlight the importance of verifying job listings before applying.

---

## Conclusion

This project demonstrates how **data analytics techniques can be applied to detect patterns associated with fraudulent job postings**.

By combining **SQL-based data analysis**, **Python preprocessing**, and **Power BI visualization**, the project provides insights into how fraudulent job listings differ from legitimate ones.

The results emphasize the role of **data-driven approaches in improving transparency and helping job seekers make informed decisions when evaluating online job opportunities.**

---

## Project Files

The repository includes:

* SQL queries used for analysis
* Jupyter Notebook for data exploration
* Power BI dashboard file
* Project report
* Dashboard screenshot
