{{ config(
    materialized='table',
    partition_by={
      "field": "date_purchase",
      "data_type": "date"
    }
) }}




SELECT 
b.parcel_id
,a.parcel_tracking
,a.transporter
,a.priority
,a.date_purchase
,a.date_shipping
,a.date_delivery
,a.date_cancelled --kontrol et
,a.month_purchase
,a.status
,a.expedition_time
,a.transport_time
,a.delivery_time
,a.delay
,a.qty
,a.nb_products
FROM {{ ref('cc_parcel') }} a
LEFT JOIN {{ ref('stg_cc_parcel_product') }} b USING  (parcel_id)