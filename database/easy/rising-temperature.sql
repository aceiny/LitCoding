select we.id 
from Weather we
join weather we2
on we.recordDate = we2.recordDate + INTERVAL 1 DAY 
where we.temperature > we2.temperature