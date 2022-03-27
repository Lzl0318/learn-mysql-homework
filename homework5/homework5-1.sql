USE shop;
SELECT product_id
     , product_name
     , sale_price
     , MAX(sale_price) OVER (ORDER BY product_id) AS Current_max_price
FROM product
ORDER BY product_id;
/*增加一列累计到道歉记录的最大值列*/