# Employee-Attrition-Performance-Analysis
This project analyzes employee data to understand attrition trends, performance patterns, and salary distribution across departments. The goal is to identify factors that contribute to employee exits and provide actionable insights for HR and management.


# Schema description

1. employees : Stores basic employee details.

- employee_id	: INT (PK)	: Unique employee identifier
- name	: VARCHAR : Employee name
- department	: VARCHAR : Department name
- role	: VARCHAR : Job role
- salary	: INT	 : Monthly salary
- experience_years	: INT : 	Total experience
- joining_date	: DATE : 	Date of joining

2. performance_reviews : Stores employee performance ratings.

- review_id	: INT (PK)	: Review identifier
- employee_id	: INT (FK)	: Employee reference
- rating	: INT	: Performance rating (1–5)
- review_date : DATE	: Review date

3. attrition : Stores exit information for employees who left.

- employee_id	INT (FK)	: Employee reference
- exit_date : 	DATE	: Exit date
- exit_reason : 	VARCHAR(100)	: Reason for exit

