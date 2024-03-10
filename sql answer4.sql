SELECT Manager_Id,                             
    (SELECT Emp_name FROM Employee e2       
     WHERE e1.Manager_Id = e2.Emp_Id) AS Manager, 
    AVG(Salary) AS Average_Salary_Under_Manager 
FROM 
    Employee e1                            
WHERE 
    Manager_Id IS NOT NULL                  
GROUP BY 
    Manager_Id;                             
