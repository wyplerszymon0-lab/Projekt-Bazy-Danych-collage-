USE example_db;

SELECT
    ori_ord_id,
    COUNT(*) AS liczba_pozycji
FROM order_drug
GROUP BY ori_ord_id;
