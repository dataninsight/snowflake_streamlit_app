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
   ROOT_DEPTH_ID number(1), --number(1,0)
   ROOT_DEPTH_CODE text(1), --varchar(1)
   ROOT_DEPTH_NAME text(7), 
   UNIT_OF_MEASURE text(2),
   RANGE_MIN number(2),
   RANGE_MAX number(2)
   ); 
-- alter table name
alter table garden_plants.veggies.rootdeath rename to garden_plants.veggies.root_depth;

USE WAREHOUSE COMPUTE_WH;
INSERT INTO ROOT_DEPTH (
	ROOT_DEPTH_ID ,
	ROOT_DEPTH_CODE ,
	ROOT_DEPTH_NAME ,
	UNIT_OF_MEASURE ,
	RANGE_MIN ,
	RANGE_MAX 
)
VALUES(1,'S','Shallow','cm',30,45);

SELECT * FROM ROOT_DEPTH LIMIT 1;

--To add more than one row at a time
insert into root_depth (root_depth_id, root_depth_code
                        , root_depth_name, unit_of_measure
                        , range_min, range_max)  
values
 (5,'X','short','in',66,77)
,(8,'Y','tall','cm',98,99)
;

-- To remove a row you do not want in the table
delete from root_depth
where root_depth_id = 9;

--To change a value in a column for one particular row
update root_depth
set root_depth_id = 7
where root_depth_id = 9;

--To remove all the rows and start over
truncate table root_depth;

create table garden_plants.veggies.vegetable_details
(
plant_name varchar(25)
, root_depth_code varchar(1)    
);
