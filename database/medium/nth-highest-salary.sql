CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  declare offset_val int ;
  set offset_val = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      select coalesce(
        (
            select distinct salary
            from Employee
            order by salary desc
            limit 1 offset offset_val
        )
    ,
    null
    ) as getNthHighestSalary
  );
END