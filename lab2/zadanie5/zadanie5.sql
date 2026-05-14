USE example_db;

SELECT
    ori_ord_id,
    SUM(ori_qty * ori_price) AS wartosc_zamowienia
FROM order_drug
GROUP BY ori_ord_id;
