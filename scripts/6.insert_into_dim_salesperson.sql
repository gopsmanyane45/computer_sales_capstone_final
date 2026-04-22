----6.dim_salesperson
DROP TABLE [Computer_std].[dbo].[dim_salesperson]
CREATE TABLE [Computer_std].[dbo].[dim_salesperson](
	[Salesperson_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL
) 
----Check PK ? 
SELECT * FROM [Computer_std].[dbo].[dim_salesperson]
---INSERT INTO dim_salesperson
INSERT INTO [Computer_std].[dbo].[dim_salesperson](Sales_Person_Name,Sales_Person_Department)
SELECT  DISTINCT [Sales_Person_Name]
      ,[Sales_Person_Department]
   --- INTO [Computer_std].[dbo].[dim_salesperson]
  FROM [Computer_std].[dbo].[raw_pc_data]  ---Remeber getting recordds from the raw.cpdata)
  ---Check if PK plus the values are correct 
  SELECT * FROM  [Computer_std].[dbo].[dim_salesperson]
