SELECT
c.date_date,
(operational_margin-ads_cost) AS ads_margin,
average_basket,
operational_margin,
ads_cost,
impression,
click,
quantity,
revenue,
purchase_cost,
margin,
shipping_fee,
logcost,
ship_cost
FROM {{ ref("int_campaigns")}} AS c
FULL OUTER JOIN {{ ref("finance_days")}} AS f
USING (date_date)
ORDER BY date_date DESC