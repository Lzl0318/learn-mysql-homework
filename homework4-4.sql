/*关联子查询*/
SELECT *
FROM product AS P1
WHERE sale_price = (
    SELECT MAX(sale_price)
    FROM product AS P2
    WHERE P1.product_type = P2.product_type
    GROUP BY product_type);
/*内连接*/
SELECT P1.*
FROM product AS P1
         INNER JOIN (
    SELECT MAX(sale_price) AS max, product_type
    FROM product
    GROUP BY product_type) as p2
                    ON (P1.product_type = P2.product_type)
WHERE P1.sale_price = P2.max;