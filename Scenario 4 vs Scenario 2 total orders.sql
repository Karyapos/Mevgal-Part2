SELECT sce_4.product_id,SUM(sce_4.ORDERS) AS orders_sce_4,
SUM(costs_senario_2.orders)
AS orders_sce_2 FROM costs_senario_2
JOIN costs_senario_4 AS sce_4
ON  costs_senario_2.date=sce_4.date
AND costs_senario_2.product_id=sce_4.product_id
AND costs_senario_2.station_id=sce_4.station_id
GROUP BY sce_4.product_id