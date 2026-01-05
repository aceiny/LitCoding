-- Solution 1: 
select cu.name as Customers
from Customers cu
where cu.id NOT IN (select customerId from Orders)

-- Solution 2:
select cu.name as Customers
from Customers cu
left join Orders o
on cu.id = o.customerId
where o.id IS NULL