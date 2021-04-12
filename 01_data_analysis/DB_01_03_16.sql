SELECT * FROM copang_main.member
	ORDER BY sign_up_day DESC
    LIMIT 8, 2;
# LIMIT : limit row amount
# LIMIT N : get data 0 ~ N - 1
# LIMIT N, M : get data N + 1 ~ N + M