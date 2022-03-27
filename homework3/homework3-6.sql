SELECT product_name, purchase_price
FROM product
WHERE purchase_price NOT IN (500, 2800, 5000);
/*
 等价于
SELECT product_name, purchase_price
  FROM product
 WHERE purchase_price<>500 AND purchase_price<>2800 AND purchase_price<>5000);

NULL 与任何比较运算符做运算得到的结果均为NULL,因此含有NULL记录的行无法被查询出来
 */

SELECT product_name, purchase_price
FROM product
WHERE purchase_price NOT IN (500, 2800, 5000, NULL);
/*
 等价于
SELECT product_name, purchase_price
  FROM product
 WHERE purchase_price<>500 AND purchase_price<>2800 AND purchase_price<>5000) AND purchase_price<>NULL;

 因此任何记录都无法被查出
 */