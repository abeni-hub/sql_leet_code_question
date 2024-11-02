-- Write your PostgreSQL query statement below
select pro.product_name, sal.year,sal.price
from Sales sal
join Product pro ON sal.product_id = pro.product_id
