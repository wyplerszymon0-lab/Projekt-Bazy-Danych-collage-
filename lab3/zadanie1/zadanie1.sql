USE example_db;

SELECT *
FROM user u
WHERE EXISTS (
    SELECT 1
    FROM `order` o
    WHERE o.ord_usr_id = u.usr_id
);
