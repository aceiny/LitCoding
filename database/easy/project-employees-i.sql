select pro.project_id , ROUND(AVG(emp.experience_years),2) as average_years
from Project pro
left join Employee emp
on pro.employee_id = emp.employee_id#
group by project_id