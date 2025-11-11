/*
========================================
DDL Script: Create Bronze tables
========================================
Script Purpose:
   this scripts creates tables in the 'bronze' schema , dropping existing tables
   if they already exists.
   Run this script to re-define the DDL structure of 'bronze' Tables
====================================================================
*/

--- Create Database 'DataWarehouse'

USE master;
go

  --Drop and recreate the 'DataWarehouse' database
  if exists (select 1 from sys.database where name = 'DataWarehouse')
  Begin
       alter Database DataWarehouse set Single_User with RollBack immediate;
       drop Database DataWarehouse;
  end;
go

create Database DataWarehouse;
go

Use DataWarehouse;
go

create schema bronze;
go

create schema silver;
go

create schema gold;
go
