SELECT product_id,
       product_name,
       sale_price,
       (
           SELECT SUM(sale_price) FROM product AS P2 WHERE P2.sale_price <= P1.sale_price
       ) AS accumulation
FROM product AS P1
ORDER BY sale_price ASC;
/*暂时无法解决第二条记录和第三条记录，两个售价一样*/
/*使用窗口函数，已经解决该问题*/
SELECT product_id,
       product_name,
       sale_price,
       SUM(sale_price) OVER(ORDER BY sale_price ROWS 8 PRECEDING) AS accumulation
FROM product AS P1
ORDER BY sale_price ASC;