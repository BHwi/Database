UPDATE student 
	SET major = '멀티미디어학과', 
		name = '차소원' 
			WHERE id = 2;
            
UPDATE student SET student_number = 20111025 WHERE id = 3;

# UPDATE 'table' SET 'column_name1' = 'value1', 'column_name2' = 'value2', ...
# WHERE id = 'target_row';
# WHERE 절은 필수(없을 경우 모든 row의 column이 다 수정 됨.)

SELECT * FROM student;