{{
    config(materialized=var('material_type'))
}}

SELECT *
FROM {{ref( 'vw_dept' )}}
