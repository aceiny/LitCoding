-- Solution 1 : 
update Salary
set sex = (
 CASE
    WHEN sex='f' THEN 'm' 
    ELSE 'f'
 END   
)
WHERE sex IN ('f','m');

-- Solution 2 : 
UPDATE Salary
SET sex = IF(sex = 'f', 'm', 'f');
