SELECT email, YEAR(sign_up_day) FROM copang_main.member
-- 	WHERE gender = 'm'
-- 		AND weight >= 70
	ORDER BY YEAR(sign_up_day) DESC, email ASC;

# ORDER BY : SORT BY Condition
# DESC(descending) : decrease sort
# ASC(ascending) : increase sort(default value)
# SELECT -> FROM -> WHERE -> ORDER BY