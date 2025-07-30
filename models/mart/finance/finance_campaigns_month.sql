SELECT 
date_trunc(date_date, month) AS date_month,
SUM((operational_margin-ads_cost)) AS monthly_ads_margin,
SUM(average_basket) AS monthly_avg_basket,
SUM(operational_margin) AS monthly_op_margin,
SUM(ads_cost) AS monthly_ads_cost,
SUM(impression)     AS monthly_impresssions,
SUM(click) AS monthly_clicks,
SUM(quantity) AS monthly_qty,
SUM(revenue) AS monthly_revenues,
SUM(purchase_cost) AS monthly_purchase_cost,
SUM(margin) AS monthly_margin,
SUM(shipping_fee) AS monthly_shipping_fee,
SUM(logcost) AS monthly_logcost,
SUM(ship_cost) AS monthly_ship_cost
FROM {{ ref(int_campaigns)}}
FULL OUTER JOIN {{ ref(finance_days)}}
    USING (date_date)
GROUP BY date_month
ORDER BY date_date DESC