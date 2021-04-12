SELECT * FROM copang_main.member
	WHERE (gender = 'm' AND height >= 180)
		OR (gender = 'f' AND height >= 170);
# WHERE AND / OR : add Condition(and, or)
# MONTH : get month of date
# Priority : AND > OR