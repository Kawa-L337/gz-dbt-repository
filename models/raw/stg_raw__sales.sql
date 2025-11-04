with 

source as (

    select * from {{ source('raw', 'sales') }}

),

stg_sales as (

    select
        date_date,
        CONCAT(orders_id,"_",pdt_id) AS prim_key,
        orders_id,
        pdt_id AS products_id,
        revenue,
        quantity

    from source

)

select * from stg_sales