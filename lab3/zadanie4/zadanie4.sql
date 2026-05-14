USE example_db;

SELECT
    d.drg_id,
    d.drg_name,
    od.ori_price,
    (SELECT AVG(ori_price) FROM order_drug) AS srednia_cena
FROM drug d
JOIN order_drug od ON d.drg_id = od.ori_drg_id
WHERE od.ori_price > (
    SELECT AVG(ori_price)
    FROM order_drug
);
