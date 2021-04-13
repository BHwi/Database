SELECT i.id, i.name, AVG(star) AS avg_star, COUNT(*) AS count_star
FROM item AS i LEFT OUTER JOIN review AS r on r.item_id = i.id
	LEFT OUTER JOIN member AS m ON r.mem_id = m.id
WHERE m.gender = 'f'
GROUP BY i.id, i.name
# view 사용
HAVING COUNT(*) >= 2 AND avg_star = (SELECT MAX(avg_star) FROM three_tables_joined AS final)
ORDER BY AVG(star) DESC, COUNT(*) DESC;

SELECT * FROM copang_main.three_tables_joined
WHERE 
(avg_star = (SELECT MAX(avg_star) FROM three_tables_joined))
	AND (count_star = (SELECT MAX(count_star) FROM three_tables_joined));