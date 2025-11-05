select
*,
quantity * purchase_price AS purchase_cost,
revenue -(quantity*purchase_price) AS margin,
{{margin_percent(revenue, quantity*purchase_price)}}
--SAFE_DIVIDE((revenue-quantity*purchase_price), revenue)*100
FROM {{ref("stg_raw__sales")}}
JOIN {{ref("stg_raw__product")}}
USING (products_id)