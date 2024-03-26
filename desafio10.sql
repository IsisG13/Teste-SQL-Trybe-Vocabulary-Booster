-- desafio10
SELECT w3schools.products.ProductName AS Nome_do_produto,
MIN(w3schools.order_details.Quantity) AS Minima,
MAX(w3schools.order_details.Quantity) AS Máxima,
ROUND(AVG(w3schools.order_details.Quantity), 2) AS Média
FROM w3schools.products
INNER JOIN w3schools.order_details 
ON w3schools.products.ProductID = w3schools.order_details.ProductID
GROUP BY w3schools.products.ProductID
ORDER BY Média ASC, Nome_do_produto;