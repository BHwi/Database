SELECT 
	id, 
    name, 
    price, 
    (SELECT MAX(price) FROM item) AS max_price,
    (SELECT AVG(price) FROM item) AS avg_price
FROM copang_main.item;