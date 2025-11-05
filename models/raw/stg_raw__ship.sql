with 

source as (

    select * from {{ source('raw', 'ship') }}

),

stg_ship as (

    select
        orders_id,
        shipping_fee,
        logcost,
        CAST(ship_cost AS FLOAT64) AS ship_cost

    from source

)

select * from stg_ship