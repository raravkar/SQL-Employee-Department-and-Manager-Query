SELECT * FROM dept_emp;


SELECT 
    de.emp_no, de.dept_no, c.emp_no as manager_number
FROM
    dept_emp de
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS latest_date
    FROM
        dept_emp
    GROUP BY emp_no) AS a ON de.emp_no = a.emp_no
        AND de.from_date = a.latest_date
        
 join  

(select dm.dept_no, dm.emp_no
from dept_manager dm
join
(select dept_no, Max(from_date) as latest_date
from dept_manager
group by dept_no) as b
on dm.dept_no = b.dept_no and dm.from_date = b.latest_date) as C

on de.dept_no = c.dept_no;