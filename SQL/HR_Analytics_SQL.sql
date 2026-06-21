-- =====================================
-- HR Analytics Project
-- =====================================

-- Query 1: Overall Attrition Rate
SELECT
    COUNT(*) AS Total_Employees,

    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Employees_Left,

    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees;

-- Query 2 — Attrition by Department
SELECT
    Department,
    COUNT(*) AS Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Attrition_Count,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Department
ORDER BY Attrition_Rate DESC;

-- Query 3 — Attrition by Job Role
SELECT
    JobRole,
    COUNT(*) AS Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Attrition_Count,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;

-- Query 4 — Overtime vs Attrition
SELECT
    OverTime,
    COUNT(*) AS Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Attrition_Count,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY OverTime
ORDER BY Attrition_Rate DESC;

-- Query 5 — Salary Analysis
SELECT
    Attrition,
    COUNT(*) AS Employees,
    ROUND(
        AVG(MonthlyIncome),
        2
    ) AS Avg_Monthly_Income
FROM employees
GROUP BY Attrition;

-- Query 6 — Age Analysis
SELECT
    Attrition,
    COUNT(*) AS Employees,
    ROUND(
        AVG(ï»¿Age ),
        2
    ) AS Avg_Age
FROM employees
GROUP BY Attrition;

-- Query 7 — Tenure Analysis
SELECT
    Attrition,
    COUNT(*) AS Employees,
    ROUND(
        AVG(YearsAtCompany),
        2
    ) AS Avg_Years_At_Company
FROM employees
GROUP BY Attrition;

-- Query 8 — Job Satisfaction Analysis
SELECT
    Attrition,
    COUNT(*) AS Employees,
    ROUND(
        AVG(JobSatisfaction),
        2
    ) AS Avg_Job_Satisfaction
FROM employees
GROUP BY Attrition;

-- Next Query 9 — Work Life Balance
SELECT
    Attrition,
    COUNT(*) AS Employees,
    ROUND(
        AVG(WorkLifeBalance),
        2
    ) AS Avg_WorkLifeBalance
FROM employees
GROUP BY Attrition;

-- Query 10 — Business Travel vs Attrition
SELECT
    BusinessTravel,
    COUNT(*) AS Employees,
    SUM(
        CASE
            WHEN Attrition='Yes' THEN 1
            ELSE 0
        END
    ) AS Attrition_Count,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Attrition='Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY BusinessTravel
ORDER BY Attrition_Rate DESC;

-- Next Query 11 — Salary Band Analysis
SELECT
    CASE
        WHEN MonthlyIncome < 5000 THEN 'Low Salary'
        WHEN MonthlyIncome BETWEEN 5000 AND 10000 THEN 'Medium Salary'
        ELSE 'High Salary'
    END AS Salary_Band,
    COUNT(*) AS Employees,
    SUM(
        CASE
            WHEN Attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Attrition_Count,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Attrition = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Salary_Band
ORDER BY Attrition_Rate DESC;

-- Query 12 — Age Group Analysis
SELECT
    CASE
        WHEN ï»¿Age < 30 THEN 'Under 30'
        WHEN ï»¿Age BETWEEN 30 AND 40 THEN '30-40'
        ELSE 'Above 40'
    END AS Age_Group,
    COUNT(*) AS Employees,
    SUM(
        CASE
            WHEN Attrition='Yes' THEN 1
            ELSE 0
        END
    ) AS Attrition_Count,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Attrition='Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Age_Group
ORDER BY Attrition_Rate DESC;

-- Query 13 — Department + Overtime
SELECT
    Department,
    OverTime,
    COUNT(*) AS Employees
    
FROM employees
GROUP BY Department, OverTime
ORDER BY Department, OverTime;

-- Query 14 — Salary Band + Overtime
SELECT
    CASE
        WHEN MonthlyIncome < 5000 THEN 'Low Salary'
        WHEN MonthlyIncome BETWEEN 5000 AND 10000 THEN 'Medium Salary'
        ELSE 'High Salary'
    END AS Salary_Band,
    OverTime,
    COUNT(*) AS Employees
FROM employees
GROUP BY Salary_Band, OverTime
ORDER BY Salary_Band, OverTime;

-- Query 15 — Highest Risk Salary Band
SELECT
    CASE
        WHEN MonthlyIncome < 5000 THEN 'Low Salary'
        WHEN MonthlyIncome BETWEEN 5000 AND 10000 THEN 'Medium Salary'
        ELSE 'High Salary'
    END AS Salary_Band,
    COUNT(*) AS Employees,
    SUM(
        CASE
            WHEN Attrition='Yes' THEN 1
            ELSE 0
        END
    ) AS Attrition_Count,

    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Attrition='Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employees
GROUP BY Salary_Band
ORDER BY Attrition_Rate DESC;

-- Query 16 — Travel + Overtime
SELECT
    BusinessTravel,
    OverTime,
    COUNT(*) AS Employees
FROM employees
GROUP BY BusinessTravel, OverTime
ORDER BY BusinessTravel, OverTime;

-- Query 17 — Rank Job Roles by Attrition Rate
WITH role_attrition AS
(
    SELECT
        JobRole,
        ROUND(
            100.0 *
            SUM(
                CASE
                    WHEN Attrition = 'Yes' THEN 1
                    ELSE 0
                END
            ) / COUNT(*),
            2
        ) AS Attrition_Rate
    FROM employees
    GROUP BY JobRole
)

SELECT
    JobRole,
    Attrition_Rate,
    DENSE_RANK() OVER
    (
        ORDER BY Attrition_Rate DESC
    ) AS Risk_Rank
FROM role_attrition;

-- ==========================================
-- SQL ANALYSIS SUMMARY
-- ==========================================

-- Key Findings:

-- 1. Overall Attrition Rate = 16.12%

-- 2. Sales Department has the highest attrition rate (20.63%).

-- 3. Sales Representatives, Laboratory Technicians,
--    and Human Resources roles show the highest attrition.

-- 4. Employees working overtime have significantly
--    higher attrition (30.53%) than non-overtime employees (10.44%).

-- 5. Employees who leave have lower average salary,
--    lower tenure, lower job satisfaction,
--    and lower work-life balance.

-- 6. Frequent business travelers show higher attrition
--    than non-travel employees.

-- 7. Low salary employees have the highest attrition rate (21.76%).

-- 8. Employees under 30 years old represent the highest-risk age group.

-- 9. Combined factor analysis indicates that
--    overtime, low salary, and frequent travel
--    are major attrition drivers.

-- Conclusion:
-- Attrition is primarily associated with
-- overtime workload, compensation level,
-- business travel frequency, and specific job roles.