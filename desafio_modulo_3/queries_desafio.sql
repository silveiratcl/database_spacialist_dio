--  How many Clients  
USE ecommerce;
SELECT COUNT(*) FROM ecommerce.Cliente;

-- How many products

SELECT COUNT(*) FROM ecommerce.produto;


-- Mean value of the products

SELECT ROUND(AVG(valor), 2) as average_valor
FROM ecommerce.Produto;


-- 