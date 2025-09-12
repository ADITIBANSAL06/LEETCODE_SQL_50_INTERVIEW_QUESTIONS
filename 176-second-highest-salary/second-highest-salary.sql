# Write your MySQL query statement below

  SELECT 
  (select DISTINCT salary
  FROM Employee
  ORDER BY salary DESC
  LIMIT 1 OFFSET 1)
   AS SecondHighestSalary