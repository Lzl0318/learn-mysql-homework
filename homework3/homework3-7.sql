SELECT COUNT(CASE WHEN sale_price <= 1000 THEN sale_price ELSE NULL END)                       AS low_price,
       COUNT(CASE WHEN sale_price > 1000 AND sale_price <= 3000 THEN sale_price ELSE NULL END) AS mid_price,
       COUNT(CASE WHEN sale_price > 3000 THEN sale_price ELSE NULL END)                        AS high_price
FROM product