SELECT *
FROM product
WHERE product_id NOT IN (SELECT product_id
  FROM Product
 WHERE product_id NOT IN (SELECT product_id FROM Product2))
