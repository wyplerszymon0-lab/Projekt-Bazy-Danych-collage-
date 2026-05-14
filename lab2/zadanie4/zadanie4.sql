USE example_db;

SELECT
    u.usr_id,
    u.usr_name,
    u.usr_surname,
    COUNT(o.ord_id) AS liczba_zamowien
FROM user u
JOIN `order` o ON u.usr_id = o.ord_usr_id
GROUP BY u.usr_id, u.usr_name, u.usr_surname;
