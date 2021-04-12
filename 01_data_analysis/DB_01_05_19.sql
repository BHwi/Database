SELECT 
	i.id, i.name, AVG(star)
FROM 
	item AS i LEFT OUTER JOIN review AS r
		ON r.item_id = i.id
	LEFT OUTER JOIN member AS m
		ON r.mem_id = m.id
WHERE m.gender = 'f'
GROUP BY i.id, i.name
ORDER BY AVG(star) DESC;