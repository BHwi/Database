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
WITH ROLLUP # 부분 총계 구하기
HAVING 
    region IS NOT NULL
ORDER BY
	region ASC,
    gender DESC;
    
# HAVING : 그루핑된 그룹들 선별하여 출력
# HAVING != WHERE