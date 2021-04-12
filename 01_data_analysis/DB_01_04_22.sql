SELECT 
	SUBSTRING(address, 1, 2) AS 'region',
    gender,
	COUNT(*), 
    AVG(height)
FROM copang_main.member
WHERE address IS NOT NULL
GROUP BY 
	SUBSTRING(address, 1, 2),
    gender
ORDER BY
	SUBSTRING(address, 1, 2),
    gender;