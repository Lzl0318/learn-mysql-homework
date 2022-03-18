SELECT product_name, product_type, sale_price*0.9-purchase_price AS profit
  FROM product
 WHERE sale_price*0.9-purchase_price > 100