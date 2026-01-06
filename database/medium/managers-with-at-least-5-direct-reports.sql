SELECT e.name
FROM Employee e
JOIN Employee r ON e.id = r.managerId
GROUP BY e.id, e.name
HAVING COUNT(r.id) >= 5;
