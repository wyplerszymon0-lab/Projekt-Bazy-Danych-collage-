Zadanie 1
SELECT *
FROM drug
LIMIT 5;

Zadanie 2
SELECT *
FROM drug
WHERE drg_description LIKE '%przeciwzapalny%';

Zadanie 3
SELECT *
FROM `order`
ORDER BY ord_audit_cd DESC;

Zadanie 4
SELECT *
FROM `order`
WHERE ord_status = 'RECEIVED'
ORDER BY ord_audit_cd ASC;

Zadanie 5
SELECT *
FROM `order`
WHERE ord_usr_id = 10
AND ord_pha_id = 1
AND YEAR(ord_audit_cd) = 2025
ORDER BY ord_audit_cd DESC;

Zadanie 6
SELECT usr_id,
       usr_enabled,
       usr_name,
       usr_surname,
       usr_phone,
       usr_audit_cd
FROM user;

Zadanie 7
SELECT o.ord_id,
       p.pha_name,
       u.usr_name,
       u.usr_surname,
       o.ord_status
FROM `order` o
JOIN pharmacy p ON o.ord_pha_id = p.pha_id
JOIN user u ON o.ord_usr_id = u.usr_id;

Zadanie 8
SELECT o.ord_id,
       d.drg_name,
       od.ori_qty,
       od.ori_price
FROM order_drug od
JOIN `order` o ON od.ori_ord_id = o.ord_id
JOIN drug d ON od.ori_drg_id = d.drg_id;

Zadanie 9
SELECT o.ord_id,
       SUM(od.ori_qty * od.ori_price) AS total_value
FROM order_drug od
JOIN `order` o ON od.ori_ord_id = o.ord_id
GROUP BY o.ord_id;
