with src_orders as (

    {#-  Orders table. This table was loaded from seed file.
    #}
    select * from {{ ref('raw_orders') }}

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from src_orders

)

select * from renamed