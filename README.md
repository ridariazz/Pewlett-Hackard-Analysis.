# Overview of Project 

The purpose of this analysis was to create multiple tables to determine the number of retiring employees per title and to identify employees who are eligible to participate in a mentorship program. We need to overall present our analysis to identify how many employees at Pewlett Hackard that are retiring or close to retiring. 

## Resources 

- Data Tools: PostgreSQL, pgAdmin 
- Data Source(s): departments.csv, employees.csv, salaries.csv, titles.csv,emp_info.csv, dept_info.csv
- Software: pgAdmin, Python, Visual Studio Code

## Analysis 

# Identifying Primary Keys 

Firstly, we had to begin with identifying the primary and foreign keys in our 6 csv files that contained all of our data. Using QuickDBD, we put all the columns in each csv file in its own table which will allow us to see the pattern between all 6 data files. The results of our findings are down below:

*Figure 1: EmployeeDB where connections between the data are made by identifying the primary and foreign keys*

![EmployeeDB](https://user-images.githubusercontent.com/106577074/183536510-4266a5cd-f168-4e46-bbcf-993b37b13ecf.png)

Next, we wrote a query to create the Retirement Titles tables for employees that were born between January 1, 1952 and December 31, 1955. We used the DISTINT ON statement to get the most recent title of every employee has some employees do have multiple titles in the database. Then, we went ahead and used the COUNT() function to create a table that has the number of retirement-age employeesby most recent job title. 

*Figure 2.0: Retirement Titles table before the DISTINCT ON function (shows duplicates)*

<img width="510" alt="Screen Shot 2022-08-08 at 5 29 32 PM" src="https://user-images.githubusercontent.com/106577074/183537213-a29cea05-f0fc-4b89-8c35-4f02cc9cde42.png">

*Figure 2.1: Unique Titles table after DISTINCT ON function (shows no duplicates)*

<img width="352" alt="Screen Shot 2022-08-08 at 5 29 05 PM" src="https://user-images.githubusercontent.com/106577074/183537267-0e572178-f418-4401-a8e9-e01c5195dbc8.png">

Lastly, we wrote a query that to retreive the number of individuals by their most recent job title who are about to retire.

*Figure 2.2: Retiring Titles table*

<img width="195" alt="Screen Shot 2022-08-08 at 5 33 59 PM" src="https://user-images.githubusercontent.com/106577074/183537557-c0630f0d-297f-4827-877f-22d790755e81.png">

