-- Write your PostgreSQL query statement below
select emp_u.unique_id, emp.name
from Employees emp
left join EmployeeUNI emp_u ON emp.id = emp_u.id
