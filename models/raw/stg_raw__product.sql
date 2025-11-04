with 

source as (

    select * from {{ source('raw', 'product') }}

),

stg_product as (

    select
        products_id,
        CAST(purchse_price AS FLOAT64) AS purchase_price

    from source

)

select * from stg_product