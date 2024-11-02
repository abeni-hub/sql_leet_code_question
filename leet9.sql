-- Write your PostgreSQL query statement below
-- Without Self JOIN we can use LAG sql function but most of the time it is not acceptable by sql windows function
SELECT recordDate
FROM Weather
WHERE temperature > LAG(temperature) OVER(ORDER BY recordDate);

-- With self JOIN in Postgress sql
select w1.id
from Weather w1 
join Weather w2 ON w1.recordDate = w2.recordDate + interval '1 day'
where w1.temperature > w2.temperature;
