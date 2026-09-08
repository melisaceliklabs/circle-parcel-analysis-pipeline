SELECT 
ParCEL_id as parcel_id,
Model_mAME as model_name,
QUANTITY as quantity
FROM {{ source('circle', 'parcel_product') }}
