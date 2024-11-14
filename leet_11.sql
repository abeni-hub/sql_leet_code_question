-- Write your PostgreSQL query statement below
select emp.name , bon.bonus
from Employee emp
left join Bonus bon ON emp.empID = bon.empID
where bonus<1000 or bonus is null;
