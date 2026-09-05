SELECT
    Parcel_id       AS parcel_id,
    Parcel_tracking AS parcel_tracking,
    Transporter     AS transporter,
    Priority        AS priority,
    PARSE_DATE('%b %e, %Y', Date_purCHase) AS date_purchase,
    PARSE_DATE('%b %e, %Y', Date_sHIpping) AS date_shipping,
    PARSE_DATE('%b %e, %Y', DATE_delivery) AS date_delivery,
    PARSE_DATE('%b %e, %Y', DaTeCANcelled) AS date_cancelled

FROM {{ source('circle', 'parcel') }}
