SELECT 
	COALESCE(height, '####'),
    COALESCE(weight, '---'),
    COALESCE(address, '@@@')
FROM copang_main.member ;