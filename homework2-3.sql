SELECT product_name, sale_price, purchase_price
  FROM product
 /*WHERE sale_price-purchase_price >= 500*/
 WHERE NOT sale_price-purchase_price < 500