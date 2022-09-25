{{
  config(
    materialized = 'incremental',
    unique_key = 'C_DNO',
    schema=var('core_schema_name'),
    merge_update_columns = ['C_DNAME', 'C_LOCATION', 'LAST_UPDATE']
  )
}}


SELECT C_DNO,
    C_DNAME,
    C_LOCATION,
    CURRENT_TIMESTAMP AS LOAD_DATE,
    CURRENT_TIMESTAMP AS LAST_UPDATE
FROM {{ ref('stg_dept') }}