SELECT regist_date
     , SUM(sale_price) OVER (PARTITION BY regist_date) AS date_sum_sale_price
FROM product
ORDER BY regist_date ASC;