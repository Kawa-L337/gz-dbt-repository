SELECT
*,
--paid_source,
ROUND((operational_margin - daily_ads_cost),2) AS ads_margin
FROM {{ref("finance_days")}}
JOIN {{ref("int_campaigns_day")}}
USING (date_date)
ORDER BY date_date DESC