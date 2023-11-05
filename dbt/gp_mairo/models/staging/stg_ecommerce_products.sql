-- Set the materialization method for this model
{{ config(
    materialized='table'
) }}

with source as (

    select * from {{ source('thelook_ecommerce', 'products') }}

)
    select
        id,
        cost,
        category,
        name,
        brand,
        retail_price,
        department,
        sku,
        distribution_center_id

    from source
