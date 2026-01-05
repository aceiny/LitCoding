select email 
from Person 
group by email
HAVING Count(email) > 1 