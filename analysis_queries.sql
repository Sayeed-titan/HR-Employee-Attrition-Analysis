-- =====================================================
-- PROJECT : HR Employee Attrition Analysis (Queries)
-- Objective: Identify patterns in employee turnover
-- Skills: SQL Analysis, Business Insights, Reporting
-- =====================================================

USE HRAnalyticsDB;
GO

-- =====================================================
-- ANALYSIS QUERIES
-- =====================================================


-- 1. Overall Attrition Rate
SELECT 
    COUNT(*) AS TotalEmployees,
    SUM(CAST(Attrition AS INT)) AS EmployeesLeft,
    ROUND(SUM(CAST(Attrition AS FLOAT)) / COUNT(*) * 100, 2) AS AttritionRate
FROM Employees;


-- 2. Attrition by Department
SELECT 
    d.DeptName,
    COUNT(e.EmpID) AS TotalEmployees,
    SUM(CAST(e.Attrition AS INT)) AS LeftCount,
    ROUND(SUM(CAST(e.Attrition AS FLOAT)) / COUNT(*) * 100, 2) AS AttritionRate
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
GROUP BY d.DeptName
ORDER BY AttritionRate DESC;


-- 3. Attrition by Job Level
SELECT 
    JobLevel,
    COUNT(*) AS TotalEmployees,
    SUM(CAST(Attrition AS INT)) AS LeftCount,
    ROUND(AVG(Salary), 0) AS AvgSalary,
    ROUND(AVG(CAST(PerformanceRating AS FLOAT)), 2) AS AvgPerformance,
    ROUND(SUM(CAST(Attrition AS FLOAT)) / COUNT(*) * 100, 2) AS AttritionRate
FROM Employees
GROUP BY JobLevel
ORDER BY AttritionRate DESC;


-- 4. Attrition vs Performance Rating
SELECT 
    PerformanceRating,
    COUNT(*) AS TotalEmployees,
    SUM(CAST(Attrition AS INT)) AS LeftCount,
    ROUND(SUM(CAST(Attrition AS FLOAT)) / COUNT(*) * 100, 2) AS AttritionRate
FROM Employees
GROUP BY PerformanceRating
ORDER BY PerformanceRating;


-- 5. Salary Analysis - Left vs Stayed
SELECT 
    CASE WHEN Attrition = 1 THEN 'Left' ELSE 'Active' END AS Status,
    COUNT(*) AS Count,
    ROUND(AVG(Salary), 0) AS AvgSalary,
    ROUND(AVG(CAST(YearsAtCompany AS FLOAT)), 1) AS AvgTenure,
    ROUND(AVG(CAST(Age AS FLOAT)), 1) AS AvgAge
FROM Employees
GROUP BY Attrition;


-- 6. High-Risk Employee Identification
-- Employees likely to leave based on patterns
SELECT 
    e.Name,
    d.DeptName,
    e.JobLevel,
    e.Salary,
    e.YearsAtCompany,
    e.PerformanceRating,
    CASE 
        WHEN e.JobLevel = 'Junior' AND e.PerformanceRating <= 2 THEN 'High Risk'
        WHEN e.Salary < 50000 AND e.YearsAtCompany < 3 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS AttritionRisk
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
WHERE e.Attrition = 0
ORDER BY 
    CASE 
        WHEN e.JobLevel = 'Junior' AND e.PerformanceRating <= 2 THEN 1
        WHEN e.Salary < 50000 AND e.YearsAtCompany < 3 THEN 2
        ELSE 3
    END;


-- 7. Department Cost Analysis
SELECT 
    d.DeptName,
    COUNT(e.EmpID) AS HeadCount,
    ROUND(SUM(e.Salary), 0) AS TotalSalaryCost,
    ROUND(AVG(e.Salary), 0) AS AvgSalary,
    ROUND(SUM(e.Salary) * 1.0 / (SELECT SUM(Salary) FROM Employees) * 100, 2) AS BudgetShare
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
WHERE e.Attrition = 0
GROUP BY d.DeptName
ORDER BY TotalSalaryCost DESC;