with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        revenue,
        quantity,
        CONCAT(orders_id-products_id) AS primary key

    from source

)

select * from renamed
