/*
========================================
Create Database and Schemas
========================================
Script Purpose:
This script creates a new database named 'Datawarehouse' after checking if it already
If the database exists, it is dropped and recreated. Additionally, the script sets up
within the database: 'bronze', 'silver', and 'gold'.

WARNING:
Running this script will drop the entire 'Datawarehouse' database if it exists.
All data in the database will be permanently deleted. Proceed with caution
and ensure you have proper backups before running this script.
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
