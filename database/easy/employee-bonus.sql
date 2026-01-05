select em.name , bo.bonus
from Employee em
left join Bonus bo
on em.empId = bo.empId
where bo.bonus < 1000 OR bo.bonus is null