select em.name as "Employee" 
from Employee em
INNER JOIN Employee emm
on em.managerId = emm.id
where em.salary > emm.salary