/*
 第一题:查不到任何记录 IS NULL
 第二题:查不到任何记录 IS NOT NULL
 第三题:查不到任何记录
 */
SELECT *
FROM product
WHERE purchase_price IS NOT NULL;