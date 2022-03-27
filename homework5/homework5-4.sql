USE shop;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_test`()
BEGIN
    CREATE TABLE product_test like shop.product;
END$$
DELIMITER ;
CALL `product_test`();
