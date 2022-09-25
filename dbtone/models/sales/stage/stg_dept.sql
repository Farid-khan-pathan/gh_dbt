{{
    config(materialized=var('stage_material_type'),schema=var('stage_schema_name'))
}}

SELECT *
FROM {{ref( 'vw_dept' )}}

