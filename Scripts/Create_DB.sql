USE master;
GO

--Chcking to drop database if it already exists 
IF EXIST (SELECT 1 FROM sys.database WHERE name = 'Datawarehouse')
BEGIN
   ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE Datawarehouse ;
END;
GO

CREATE DATABASE Datawarehouse;
USE Datawarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
