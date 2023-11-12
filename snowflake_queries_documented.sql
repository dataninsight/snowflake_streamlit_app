-- create new database
create database demo_db;
--show database
show databases;
--show schema
show schemas;
--to get all schemas from all databases 
SHOW SCHEMAS IN ACCOUNT;
use role sysadmin;
create or replace table GARDEN_PLANTS.VEGGIES.ROOT_DEPTH (
   ROOT_DEPTH_ID number(1), 
   ROOT_DEPTH_CODE text(1), 
   ROOT_DEPTH_NAME text(7), 
   UNIT_OF_MEASURE text(2),
   RANGE_MIN number(2),
   RANGE_MAX number(2)
   ); 
