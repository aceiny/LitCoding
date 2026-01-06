select distinct l.num as ConsecutiveNums
from Logs l
join Logs l1 on l.id = l1.id - 1
join Logs l2 on l.id = l2.id + 1
where l.num = l1.num and l.num = l2.num