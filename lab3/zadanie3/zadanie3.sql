USE example_db;

SELECT
    ori_ord_id,
    SUM(ori_qty * ori_price) AS wartosc_zamowienia
FROM order_drug
GROUP BY ori_ord_id
HAVING SUM(ori_qty * ori_price) > (
    SELECT AVG(wartosc)
    FROM (
        SELECT SUM(ori_qty * ori_price) AS wartosc
        FROM order_drug
        GROUP BY ori_ord_id
    ) AS srednia
);
