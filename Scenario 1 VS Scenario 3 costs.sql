SELECT se_1.product_id,ROUND(SUM(se_1.prod_costs)) AS Sce_1_prod_costs
,ROUND(SUM(se_1.distr_costs)) AS Sce_1_distr_costs
,ROUND(SUM(costs_senario_3.prod_costs)) AS Sce_3_prod_costs
,ROUND(SUM(costs_senario_3.distr_costs)) AS Sce_3_distr_costs
FROM costs_senario_3
JOIN costs_senario_1 AS se_1
ON costs_senario_3.product_id=se_1.product_id AND
costs_senario_3.date=se_1.date AND
costs_senario_3.station_id=se_1.station_id
GROUP BY se_1.product_id