{{
    config(materialized=var('std_material_type'),schema=var('std_schema_name'))
}}

SELECT SUBSTR(DNAME,1,2)||'_'||DNO AS C_DNO,
    DNAME AS C_DNAME,
    LOCATION AS C_LOCATION,
    CURRENT_TIMESTAMP AS LOAD_DATE
FROM CDW_DEV_SALES.LAND.LND_DEPT
