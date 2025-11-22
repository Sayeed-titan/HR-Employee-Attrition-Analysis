-- =====================================================
-- PROJECT Name: HR Employee Attrition Analysis
-- Objective: Identify patterns in employee turnover
-- Skills: SQL Analysis, Business Insights, Reporting
-- =====================================================

-- Create Database
CREATE DATABASE HRAnalyticsDB;
GO
USE HRAnalyticsDB;
GO

-- Create Tables
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    ManagerID INT
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    DeptID INT FOREIGN KEY REFERENCES Departments(DeptID),
    HireDate DATE,
    Salary DECIMAL(10,2),
    Age INT,
    Gender VARCHAR(10),
    JobLevel VARCHAR(20),
    YearsAtCompany INT,
    PerformanceRating INT, -- 1-5
    Attrition BIT -- 0=Active, 1=Left
);