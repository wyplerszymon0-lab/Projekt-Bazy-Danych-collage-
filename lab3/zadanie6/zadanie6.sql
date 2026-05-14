USE example_db;

SELECT DISTINCT
    u.usr_id,
    u.usr_name,
    u.usr_surname
FROM user u
WHERE EXISTS (
    SELECT 1
    FROM `order` o
    JOIN order_drug od ON o.ord_id = od.ori_ord_id
    WHERE o.ord_usr_id = u.usr_id
    GROUP BY o.ord_id
    HAVING COUNT(DISTINCT od.ori_drg_id) > 1
);
