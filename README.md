# Overview of Project 

The purpose of this analysis was to create multiple tables to determine the number of retiring employees per title and to identify employees who are eligible to participate in a mentorship program. We need to overall present our analysis to identify how many employees at Pewlett Hackard that are retiring or close to retiring. 

## Resources 

- Data Tools: PostgreSQL, pgAdmin 
- Data Source(s): departments.csv, employees.csv, salaries.csv, titles.csv,emp_info.csv, dept_info.csv
- Software: pgAdmin, Python, Visual Studio Code

# Analysis

## Identifying Primary Keys 

Firstly, we had to begin with identifying the primary and foreign keys in our 6 csv files that contained all of our data. Using QuickDBD, we put all the columns in each csv file in its own table which will allow us to see the pattern between all 6 data files. The results of our findings are down below:

*Figure 1: EmployeeDB where connections between the data are made by identifying the primary and foreign keys*

![EmployeeDB](https://user-images.githubusercontent.com/106577074/183536510-4266a5cd-f168-4e46-bbcf-993b37b13ecf.png)

## Creating Tables 
Next, we wrote a query to create the Retirement Titles tables for employees that were born between January 1, 1952 and December 31, 1955. We used the DISTINT ON statement to get the most recent title of every employee has some employees do have multiple titles in the database. Then, we went ahead and used the COUNT() function to create a table that has the number of retirement-age employeesby most recent job title. 

*Figure 2.0: Retirement Titles table before the DISTINCT ON function (shows duplicates)*

<img width="659" alt="Screen Shot 2022-08-08 at 5 41 05 PM" src="https://user-images.githubusercontent.com/106577074/183538254-9de838e1-aa4f-4dde-ae96-5b628e59ff0b.png">

<img width="510" alt="Screen Shot 2022-08-08 at 5 29 32 PM" src="https://user-images.githubusercontent.com/106577074/183537213-a29cea05-f0fc-4b89-8c35-4f02cc9cde42.png">

*Figure 2.1: Unique Titles table after DISTINCT ON function (shows no duplicates)*

<img width="803" alt="Screen Shot 2022-08-08 at 5 42 00 PM" src="https://user-images.githubusercontent.com/106577074/183538341-dac22241-98c6-479f-82a7-09ff125d8d11.png">

<img width="352" alt="Screen Shot 2022-08-08 at 5 29 05 PM" src="https://user-images.githubusercontent.com/106577074/183537267-0e572178-f418-4401-a8e9-e01c5195dbc8.png">

Lastly, we wrote a query that to retreive the number of individuals by their most recent job title who are about to retire.

*Figure 2.2: Retiring Titles table*

<img width="742" alt="Screen Shot 2022-08-08 at 5 42 41 PM" src="https://user-images.githubusercontent.com/106577074/183538409-e14d122a-451f-4b6a-8eb6-2ad98a7f00df.png">

<img width="195" alt="Screen Shot 2022-08-08 at 5 33 59 PM" src="https://user-images.githubusercontent.com/106577074/183537557-c0630f0d-297f-4827-877f-22d790755e81.png">

## Eligibilty for Mentorship Program 

Now, we want to create a mentorship-eligibilty table that holds the current employees who were born between January 1, 1965 and December 31, 1965. We used the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause. 

*Figure 3: Mentorship Program table*

<img width="764" alt="Screen Shot 2022-08-08 at 5 43 24 PM" src="https://user-images.githubusercontent.com/106577074/183538474-a04d934f-d0da-4efb-abfe-d36b049898d4.png">

<img width="615" alt="Screen Shot 2022-08-08 at 5 39 54 PM" src="https://user-images.githubusercontent.com/106577074/183538158-c609d109-8a35-41e2-ab57-b150a9816d2c.png">

# Results 

4 major points from our analysis:

- From our analysis, about 72, 458 employees are retiring. The titles and breakdown of the department staff is shown below in Figure 4. 

Figure 4: Retiring Titles 

<img width="206" alt="Screen Shot 2022-08-08 at 5 46 57 PM" src="https://user-images.githubusercontent.com/106577074/183538823-ba3679fd-baf5-4aeb-8f55-35d2789729ad.png">

- the two departments which will face a impactful difference is Senior Engineer and Senior Staff
- The engineering department will be effected the most 
- 1, 941 employees are eligible for the mentorship program 

# Summary 

According to the retirement table, about 133, 777 employees are to be retiring soon. Moreover, there aren't enough retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees as there are 1, 941 who are eligible to partcipate in the mentorship program. 

