-- Solution 1 : 
SELECT name
FROM SalesPerson sp
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE o.sales_id = sp.sales_id AND c.name = "RED"
)
-- Solution 2 :
select name 
from SalesPerson
where sales_id NOT IN (
    select sp.sales_id 
    from SalesPerson sp
    JOIN Orders o ON sp.sales_id = o.sales_id
    JOIN Company com ON o.com_id = com.com_id
    where com.name = "RED"
)