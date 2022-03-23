USE shop;


SELECT SP.shop_id, SP.shop_name, P.product_id, P.product_name, p.product_type
FROM shopproduct AS SP
INNER JOIN (SELECT product_id, product_name,product_type, MAX(sale_price) FROM product
GROUP BY product_type) AS P
ON SP.product_id = P.product_id;



