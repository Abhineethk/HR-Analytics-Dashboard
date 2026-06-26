# HR Analytics Dashboard

## Project Overview

This project analyzes employee attrition using Python, SQL, and Power BI. The objective is to identify the key factors contributing to employee turnover and provide actionable insights that support data-driven HR decision-making.

The project follows a complete analytics workflow, starting from exploratory data analysis (EDA) in Python, moving to business analysis using SQL, and finally building an interactive Power BI dashboard for stakeholder reporting.

---

## Business Problem

Employee attrition can significantly impact organizational productivity, hiring costs, and employee morale. HR leadership aims to reduce employee attrition from approximately 18% to below 12% by identifying high-risk employee groups and understanding the key drivers behind employee turnover.

---

## Dataset

**Dataset:** IBM HR Analytics Employee Attrition Dataset

**Records:** 1,470 Employees

**Target Variable:** Attrition (Yes/No)

---

## Tools & Technologies

* Python (Pandas, Matplotlib, Seaborn)
* SQL (MySQL)
* Power BI
* DAX
* Git & GitHub

---

## Project Workflow

### 1. Python - Exploratory Data Analysis (EDA)

Performed exploratory analysis to understand employee behavior and identify potential attrition drivers.

#### Analysis Conducted

* Salary distribution analysis
* Age distribution analysis
* Tenure analysis
* Job satisfaction analysis
* Overtime impact analysis
* Correlation analysis

#### Key EDA Findings

* Employees who leave earn lower salaries.
* Employees who leave are generally younger.
* Employees who leave have lower tenure.
* Employees who leave report lower job satisfaction.
* Employees working overtime exhibit significantly higher attrition.
* Most employees belong to lower salary bands.
* Correlation analysis indicates relationships between salary, experience, and job level.

---

### 2. SQL Business Analysis

SQL was used to quantify attrition patterns and generate business insights.

#### Analysis Conducted

* Overall Attrition Rate
* Attrition by Department
* Attrition by Job Role
* Attrition by Salary Band
* Attrition by Overtime
* Attrition by Age Group
* Attrition by Business Travel
* Attrition by Work-Life Balance
* Tenure Cohort Analysis
* Combined Driver Analysis

#### Key SQL Findings

* Overall Attrition Rate = 16.12%
* Sales Department has the highest attrition rate (20.63%).
* Sales Representatives, Laboratory Technicians, and Human Resources roles show the highest attrition.
* Employees working overtime have significantly higher attrition (30.53%) than non-overtime employees (10.44%).
* Employees who leave have lower average salary, lower tenure, lower job satisfaction, and lower work-life balance.
* Frequent business travelers show higher attrition than non-travel employees.
* Low salary employees have the highest attrition rate.
* Employees under 30 years old represent the highest-risk age group.
* Overtime, low salary, and frequent travel emerge as major attrition drivers.

---

### 3. Power BI Dashboard

Built a 3-page interactive dashboard to visualize attrition trends and support HR decision-making.

#### Executive Overview

Provides a high-level summary of workforce attrition.

**KPIs**

* Total Employees
* Attrition Count
* Attrition Rate
* Average Salary
* Average Tenure

**Visuals**

* Attrition by Department
* Attrition by Job Role
* Attrition by Salary Band
* Attrition by Overtime

---

#### Risk Analysis

Identifies high-risk employee groups.

**Visuals**

* Attrition by Age Group
* Attrition by Business Travel
* Attrition by Job Satisfaction
* Attrition by Work-Life Balance

---

#### Employee Lifecycle Analysis

Examines employee retention across different stages of employment.

**Visuals**

* Attrition by Tenure Band
* Attrition by Promotion Band
* Attrition by Training Times Last Year
* Attrition by Years With Current Manager

---

## Advanced Power BI Features

Implemented several advanced Power BI capabilities:

* Drill Through Analysis
* Dynamic Titles
* Navigation Buttons
* Report Tooltips
* Row-Level Security (RLS)
* Interactive Slicers
* DAX Measures
* KPI Cards

---

## Key Business Insights

1. Sales Department experiences the highest employee attrition.
2. Employees working overtime are significantly more likely to leave.
3. Younger employees and employees with shorter tenure represent the highest-risk groups.
4. Low salary is strongly associated with higher attrition.
5. Frequent business travel contributes to employee turnover.
6. Low job satisfaction and poor work-life balance are major attrition drivers.
7. Employees in their first few years at the company show elevated attrition rates.
8. Limited promotion opportunities and managerial instability contribute to employee exits.

---

## Recommendations

Based on the analysis, HR should consider:

* Reducing excessive overtime requirements.
* Reviewing compensation strategies for lower salary bands.
* Improving employee work-life balance initiatives.
* Enhancing onboarding and engagement programs for newer employees.
* Monitoring frequent business travelers for burnout risks.
* Strengthening career progression and promotion pathways.
* Providing targeted retention programs for high-risk employee groups.

---

## Business Impact

The dashboard enables HR teams to:

- Identify high-risk employee groups.
- Monitor attrition trends across departments.
- Improve employee retention strategies.
- Support workforce planning using data-driven insights.
- Reduce turnover by targeting key attrition drivers.

---

## Repository Structure

```text
HR-Analytics-Dashboard/

├── Dashboard Images/
├── Dataset/
├── Power BI/
├── Python/
├── SQL/
└── README.md
```

## Business Questions

This project answers the following business questions:

- Which departments experience the highest employee attrition?
- Which job roles are most likely to experience attrition?
- How does overtime affect employee retention?
- Does salary influence employee attrition?
- Which age groups are at higher risk?
- Does business travel contribute to employee turnover?
- How do job satisfaction and work-life balance affect attrition?
- Which stages of the employee lifecycle have the highest attrition?

---

## Dashboard Preview

### Executive Overview

![Executive Overview](Dashboard%20Images/Executive_Overview.png)

---

### Risk Analysis

![Risk Analysis](Dashboard%20Images/Risk_Analysis.png)

---

### Employee Lifecycle

![Employee Lifecycle](Dashboard%20Images/Employee_Lifecycle.png)

---

### Tooltip Page

![Tooltip](Dashboard%20Images/Tooltip_page.png)

---

## Outcome

Built an end-to-end HR Analytics solution integrating Python, SQL, and Power BI into a unified analytics workflow.
The project identified key attrition drivers—including overtime, salary level, business travel, job satisfaction, work-life balance, and employee tenure—and delivered actionable recommendations to support employee retention and data-driven HR decision-making.

---

## Skills Demonstrated

- Exploratory Data Analysis (EDA)
- Data Cleaning
- SQL Business Analysis
- Dashboard Development
- DAX Measures
- HR Analytics
- Data Visualization
- Business Intelligence
- Data Storytelling

---

## Author

**Abhineeth K**

Aspiring Data Analyst

**Skills:** SQL • Excel • Power BI • Python

**GitHub:** https://github.com/Abhineethk

**LinkedIn:** [Your LinkedIn URL](https://www.linkedin.com/in/abhineeth-k-381a21238/)
