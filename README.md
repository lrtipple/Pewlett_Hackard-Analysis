# Pewlett Hackard Analysis

## Resources

**Data Sources:** departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
**Software:** SQL, PostgreSQL, pgAdmin


## **Overview of Analysis**

Determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

The criterion for retiring employees was based on the birth dates ranging from 1952 to 1955 and hired dates from 1985 to 1988.
The criterion for employees eligible for mentorship was based solely on a birthday in the year 1965.

## ERD - Entity Relationship Diagram
- Below is the ERD used to visualize the relationship between the data sources and the structure of the company's employee plan to facilitate the analysis. 

![EmploeeDB](https://user-images.githubusercontent.com/99093289/162218263-5a8f8659-c695-4c14-8ad8-f1c79976fced.png)

## Results

- There are 72,458 employees about to retire. The table below shows the number of employees by title about to retire. The total current empployee count is 240,124. Therefore, 30% of the total workforce is about to retire.
### Retiring counts
![count_retiring_employees](https://user-images.githubusercontent.com/99093289/162218691-7c8cb4d8-fae2-42e8-9d9f-add8b4999a17.PNG)

### Total counts
![current employees by title](https://user-images.githubusercontent.com/99093289/162225005-710577be-170b-46c0-9c11-a77acbe64c06.PNG)


## Mentorship Candidates

- The list of eligible employees for a mentorship can be found in the table mentorship_eligibility.csv. There are only 1549 internal employees eligible based on the birthday criterion of 1965.

 **Count of mentorship eligible employees by title**
 
![mento_eligible_count](https://user-images.githubusercontent.com/99093289/162228852-da528b12-ef72-4dba-bc28-668a116c8f59.PNG)


## Summary

- Pewlett Hackard has 30% of their workforce getting ready for retirement. Based on birth year, 1965, there are 1549 employees they consider eligible for mentorship. My recommendation would be to broaden the eligibility of mentorship to include years of service so they can target more internal employees for promotion. I would also recommend they review salaries amongst competition so they can be a competitive employer for the upcoming hiring event they will need. Without restructuring the operation functionality of the business, they will need to backfill 72,458 retirees and potentially any internal positions that will be vacated due to the mentorship program.

## Mentorship list for reference
- [mentorship_eligibility.csv](https://github.com/lrtipple/Pewlett_Hackard-Analysis/files/8444147/mentorship_eligibility.csv)
