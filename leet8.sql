-- Write your PostgreSQL query statement below
select vi.customer_id , count(vi.visit_id) as count_no_trans
from Visits vi
left join Transactions ta ON vi.visit_id = ta.visit_id
where ta.transaction_id is null
group by customer_id;
