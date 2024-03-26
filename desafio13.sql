USE w3schools;
-- desafio13
SELECT w3schools.products.ProductName AS Produto, 
w3schools.products.Price AS Preço
FROM w3schools.products
INNER JOIN 
(
  SELECT * FROM w3schools.order_details
  WHERE Quantity > 80
) AS ordens_maiores_q_80
ON w3schools.products.ProductID = ordens_maiores_q_80.ProductID
ORDER BY Produto;