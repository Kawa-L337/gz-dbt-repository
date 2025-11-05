select
*,
CONCAT(date_date,"_",campaign_key) AS prim_key
FROM {{ref("stg_raw__adwords")}}
UNION ALL 
SELECT 
*,
CONCAT(date_date,"_",campaign_key) AS prim_key
FROM {{ref("stg_raw__bing")}}
UNION ALL
SELECT 
*,
CONCAT(date_date,"_",campaign_key) AS prim_key
FROM {{ref("stg_raw__criteo")}}
UNION ALL
SELECT 
*,
CONCAT(date_date,"_",campaign_key) AS prim_key
FROM {{ref("stg_raw__facebook")}}