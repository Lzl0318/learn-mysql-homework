SELECT product_type, SUM(sale_price) AS sum, SUM(purchase_price) AS sum
FROM product
GROUP BY product_type
HAVING SUM(sale_price) > 1.5*SUM(purchase_price);