{{
    config(materialized=var('std_material_type'),schema=var('agg_schema_name'))
}}

SELECT C_DNAME, COUNT(*) AS DEPT_CNT
FROM {{ref( 'ct_dept' )}}
{{ dbt_utils.group_by(1) }}
