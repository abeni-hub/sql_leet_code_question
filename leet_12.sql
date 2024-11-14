-- Write your PostgreSQL query statement below
select stu.student_id ,stu.student_name,sub.subject_name , count(ex.subject_name) as attended_exams
from Students stu
left join Examinations ex ON stu.student_id = ex.student_id
left join Subjects sub ON ex.subject_name = sub.subject_name
group by 1,2,3
order by 1,3
