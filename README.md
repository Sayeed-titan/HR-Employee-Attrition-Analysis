
---

## Key Findings

### 1. Overall Attrition Rate
- **Attrition Rate:** 24%
- **Highest Attrition Department:** Sales (50%)

### 2. Junior-Level Employees
- **Attrition Rate for Juniors (Performance ≤ 2):** 3x higher than others.

### 3. Salary Analysis
- **Average Salary of Left Employees:** 18% lower than those who stayed.

### 4. High-Risk Employees
- Identified employees with low performance and shorter tenure as high risk for leaving.

### 5. Departmental Salary Costs
| Department | Headcount | Total Salary Cost | Avg Salary |
|------------|-----------|-------------------|------------|
| Sales      | 10        | ₹50,00,000        | ₹5,00,000  |
| IT         | 8         | ₹40,00,000        | ₹5,00,000  |
| HR         | 6         | ₹25,00,000        | ₹4,16,666  |

---

## SQL Techniques Demonstrated

| Technique | Queries Used In |
|-----------|-----------------|
| Common Table Expressions (CTE) | #1, #2 |
| Aggregations | All queries |
| JOINs (2-3 tables) | #2, #5, #6 |
| CASE Statements | #3, #6 |
| Date Functions | #4 |

---

## Excel Dashboard Components

1. **Attrition Trend Line Chart** - Overall and by department
2. **Performance vs Attrition Scatter Plot** - Correlation between performance rating and attrition
3. **Salary vs Tenure Bar Chart** - Salary analysis for employees who stayed vs. left
4. **Risk Segmentation Pie Chart** - High, Medium, Low-risk employee distribution
5. **KPI Cards** - Attrition Rate, Average Salary, Total Employees

---

## How to Reproduce

1. Set up the database by running `setup.sql` to create tables and insert sample data.
2. Execute `analysis_queries.sql` to get insights on attrition, salary, and risk.
3. Export query results to Excel.
4. Create visualizations using Pivot Tables and Charts.
5. Build the dashboard layout based on the visualizations.

---

## Future Enhancements

- Implement predictive modeling for attrition using machine learning.
- Add deeper analysis of employee satisfaction factors.
- Create an automated reporting pipeline for monthly HR updates.

---

**Author:** [Kazi Abu Sayeed]  
**Date:** November 2025  
**GitHub:** [https://github.com/Sayeed-titan]
