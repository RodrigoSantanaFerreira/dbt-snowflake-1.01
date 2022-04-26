with src_payments as (
    
    {#-  This source is reading data from file that was loaded from seed csv files.
    #}
    select * from {{ ref('raw_payments') }}

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,

        -- `amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount_usd

    from src_payments

)

select * from renamed
