--number of retiring employees
SELECT e.emp_no, e.first_name, e.last_name, 
ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
   WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
		  ORDER BY e.emp_no;

-- The Number of Retiring Employees by Title (most recent title)
SELECT DISTINCT ON (rt.emp_no)
rt.emp_no, rt.first_name, rt.last_name, rt.title
--INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Number of employees about to retire by title
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY count DESC;

--Employees eligible for mentorship
SELECT DISTINCT ON (e.emp_no)
e. emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no, ti.from_date DESC;