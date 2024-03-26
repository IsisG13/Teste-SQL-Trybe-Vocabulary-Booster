-- desafio9
SELECT CONCAT(w3schools.employees.FirstName, ' ', w3schools.employees.LastName),
COUNT(w3schools.orders.EmployeeID) AS Total_de_pedidos
FROM w3schools.employees
INNER JOIN w3schools.orders ON w3schools.orders.EmployeeID = w3schools.employees.EmployeeID
GROUP BY w3schools.employees.EmployeeID
ORDER BY COUNT(w3schools.orders.EmployeeID) ASC;