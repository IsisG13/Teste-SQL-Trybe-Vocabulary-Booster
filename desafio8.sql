CREATE DATABASE w3schools;
USE w3schools;

-- desafio8
SELECT w3schools.customers.ContactName AS Nome_de_contato,
w3schools.shippers.ShipperName AS Empresa_que_fez_o_envio,
w3schools.orders.OrderDate
FROM w3schools.orders
INNER JOIN w3schools.customers 
ON w3schools.orders.CustomerID = w3schools.customers.CustomerID
INNER JOIN w3schools.shippers 
ON w3schools.orders.ShipperID = w3schools.shippers.ShipperID
WHERE w3schools.shippers.ShipperName = 'Speedy Express' 
OR w3schools.shippers.ShipperName = 'United Package'
ORDER BY w3schools.customers.ContactName, w3schools.shippers.ShipperName, w3schools.orders.OrderDate;