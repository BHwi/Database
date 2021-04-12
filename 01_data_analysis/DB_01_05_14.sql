SELECT
	old.id AS old_id,
    old.name AS old_name,
    new.id AS new_id,
    new.name AS new_name
FROM item AS old RIGHT OUTER JOIN `item-new` AS new
ON old.id = new.id
# WHERE old.id IS NULL;