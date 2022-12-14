-- Deliverable 1: create a retirement titles table that holds all the employees 
-- who were born b/w 1952-01-01 and 1955-12-31
SELECT e.emp_no, 
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no; 

SELECT * FROM retirement_titles;

-- removing duplicates and keeping most recent titles
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles as re
-- exclude employees that already left the company by filtering on to_date to keep only dates 
-- that are equal to 9999-01-01
WHERE (re.to_date = '9999-01-01' )
ORDER BY emp_no, title DESC;

SELECT * FROM unique_titles;

-- another query in the Employee_Database_challenge.sql file to retrieve the number of 
-- employees by their most recent job title who are about to retire.
SELECT COUNT(ut.emp_no),
ut.title
INTO retiring_titles 
FROM unique_titles as ut 
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;

-- DELIVERABLE 2: create a mentorship-eligibility table that holds the current employees
-- who were born between January 1, 1965 and Dec 31, 1965
SELECT DISTINCT ON(e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
LEFT OUTER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT OUTER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no; 

SELECT * FROM mentorship_eligibilty;
