select dep.name  as Department, em.name as Employee, em.salary as Salary
from Employee em 
join Department dep
on dep.id = em.departmentId
where salary = (
    select max(salary)
    from Employee em2
    where em2.departmentId = em.departmentId
)
