# Aggregate function(집계 함수) : 그루핑된 그룹의 값들을 보여주는 함수
SELECT 
	gender, 
	COUNT(*), 
    AVG(height)
FROM copang_main.member
GROUP BY gender;