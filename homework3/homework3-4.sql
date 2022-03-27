SELECT product_id,
       product_name,
       product_type,
       sale_price,
       (
           SELECT AVG(sale_price)
           FROM product AS p2
           WHERE p1.product_type = p2.product_type
           GROUP BY product_type
       ) AS sale_price_avg
FROM product AS p1

