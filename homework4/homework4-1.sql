SELECT *
FROM product
WHERE sale_price > 500
UNION
SELECT *
FROM product2
WHERE sale_price > 500
