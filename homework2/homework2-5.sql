/* error
SELECT product_id, SUM（product_name）只能聚合聚合键
  FROM product
 GROUP BY product_type
 WHERE regist_date > '2009-09-01'; WHERE在GROUP BY的前面
 */

SELECT product_id, product_type, count(*)
FROM product
WHERE regist_date > '2009-09-01'
GROUP BY product_type;