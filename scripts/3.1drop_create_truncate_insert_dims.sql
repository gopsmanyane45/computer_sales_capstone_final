
----1.dim_customer 
DROP TABLE [Computer_std].[dbo].[dim_customer]
CREATE TABLE [Computer_std].[dbo].[dim_customer](
    [Cusomer_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
) 
---DROP TABLE [Computer_std].[dbo].[dim_customer]

SELECT * FROM [Computer_std].[dbo].[dim_customer]


TRUNCATE TABLE [Computer_std].[dbo].[dim_customer]
INSERT INTO [Computer_std].[dbo].[dim_customer](Customer_Name,Customer_Surname,Customer_Contact_Number,Customer_Email_Address)
SELECT [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
   FROM [Computer_std].[dbo].[raw_pc_data]

   SELECT * FROM [Computer_std].[dbo].[dim_customer]

   -----Difference between TRUNCATE, DELETE and DROP 
   ---DELETE = removes speficic row usually used with WHERE 
   ---DROP = removes entire table // whole table is removed 
   ---TRUNCATE - removes all the values from the table - Doesnt affect the whole table //faster removes large data//resets identity  

-----dim_date 
DROP TABLE [Computer_std].[dbo].[dim_Date]
CREATE TABLE [Computer_std].[dbo].[dim_Date](
    [Date_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
) 

 SELECT * FROM [Computer_std].[dbo].[dim_Date]

TRUNCATE TABLE [Computer_std].[dbo].[dim_Date]
INSERT INTO [Computer_std].[dbo].[dim_Date](Purchase_Date,Ship_Date)
SELECT 
       [Purchase_Date]
      ,[Ship_Date]
  FROM [Computer_std].[dbo].[dim_Date]

   SELECT * FROM [Computer_std].[dbo].[dim_Date]