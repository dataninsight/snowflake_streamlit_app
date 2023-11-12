Database: used to group datasets (tables) together.It is the first level of organizational grouping in snowflake
Schema: it is a second-level organizational grouping, within a database.Every time you create a database, Snowflake will automatically create two schemas for you i.e.,INFORMATION_SCHEMA,PUBLIC schema.
INFORMATION_SCHEMA: schema holds a collection of views, it cannot be deleted (dropped), renamed, or moved.
PUBLIC: schema is created empty and you can fill it with tables, views and other things over time, it can be dropped, renamed, or moved at any time.  
There are four drop-menu settings or defaults for each worksheet i.e., Database,schema,warehouse,role.ROLE and WAREHOUSE Drop Menu Values are REQUIRED.DATABASE and SCHEMA Drop Menu Values are SUGGESTED STARTING POINTS
