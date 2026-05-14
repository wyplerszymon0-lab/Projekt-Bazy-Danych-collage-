USE example_db;

SELECT
    ori_ord_id,
    SUM(ori_qty * ori_price) AS wartosc_zamowienia,
    CASE
        WHEN SUM(ori_qty * ori_price) > 100 THEN 'DUŻE'
        ELSE 'MAŁE'
    END AS rozmiar
FROM order_drug
GROUP BY ori_ord_id;
