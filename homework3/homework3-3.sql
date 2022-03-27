SELECT product_id,
       product_name,
       product_type,
       sale_price,
       (
           SELECT AVG(sale_price)
           FROM product) AS sale_price_avg
FROM product;
