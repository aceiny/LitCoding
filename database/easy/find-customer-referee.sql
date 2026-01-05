select cu1.name 
from Customer cu1
left join Customer cu2
on cu1.referee_id = cu2.id
where cu2.id != 2 OR cu2.id IS NULL