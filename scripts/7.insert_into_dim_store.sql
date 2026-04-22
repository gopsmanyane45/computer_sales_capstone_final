----7.dim_store
DROP TABLE [Computer_std].[dbo].[dim_store]
CREATE TABLE [Computer_std].[dbo].[dim_store](
	[Store_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL
) 
---Check PK ?
SELECT * FROM [Computer_std].[dbo].[dim_store]
-------INSERT INTO 
INSERT INTO [Computer_std].[dbo].[dim_store](Shop_Name,Shop_Age)
SELECT DISTINCT  [Shop_Name]  
       ,[Shop_Age]
FROM [Computer_std].[dbo].[raw_pc_data]
----Check if the PK was added and avlues are correct 
SELECT * FROM [Computer_std].[dbo].[dim_store]


