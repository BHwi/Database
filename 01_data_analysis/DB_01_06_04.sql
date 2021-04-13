SELECT 
	id, 
    name, 
    price, 
    (SELECT AVG(price) FROM item) AS avg_price
FROM copang_main.item
WHERE price > (SELECT AVG(price) FROM item);

# max price item select
SELECT id, name, price
FROM item
WHERE price = (SELECT MAX(price) FROM item);

# min price item select
SELECT id, name, price
FROM item
WHERE price = (SELECT MIN(price) FROM item);