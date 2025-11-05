SELECT
DATE_TRUNC(date_date,MONTH) AS datemonth,
ROUND((SUM(total_revenue) / SUM(nb_of_transactions)),2) AS average_basket,
ROUND(SUM(ads_margin),0) AS ads_margin,
ROUND(SUM(operational_margin),0) AS operational_margin,
ROUND(SUM(daily_ads_cost),0) AS ads_cost,
ROUND(SUM(daily_click),0) AS click,
ROUND(SUM(daily_impression),0) AS impression,
ROUND(SUM(total_quantity),0) AS quantity,
ROUND(SUM(total_revenue),0) AS revenue,
ROUND(SUM(total_purchase_cost),0) AS purchase_cost,
ROUND((SUM(total_revenue-total_purchase_cost)),0) AS margin,
ROUND(SUM(total_shipping_fee),0) AS shipping_fee,
ROUND(SUM(total_logcost),0) AS logcost,
ROUND(SUM(total_ship_cost),0) AS ship_cost
FROM {{ref("finance_campaigns_day")}}
GROUP BY datemonth
