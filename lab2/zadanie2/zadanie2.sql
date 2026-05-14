USE example_db;

SELECT
    od.ori_ord_id,
    d.drg_name,
    od.ori_qty,
    od.ori_price
FROM order_drug od
JOIN drug d ON od.ori_drg_id = d.drg_id;
