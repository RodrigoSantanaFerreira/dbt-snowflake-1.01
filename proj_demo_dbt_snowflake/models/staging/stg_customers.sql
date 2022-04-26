with src_customer as (

    {#- This source is reading data that was loads by seed.
    #}
    select * from {{ ref('raw_customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from src_customer

)

select * from renamed
