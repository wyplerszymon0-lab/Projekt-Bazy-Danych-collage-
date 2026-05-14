USE example_db;

SELECT
    o.ord_id,
    o.ord_status,
    u.usr_name,
    u.usr_surname,
    p.pha_name
FROM `order` o
JOIN user u ON o.ord_usr_id = u.usr_id
JOIN pharmacy p ON o.ord_pha_id = p.pha_id;
