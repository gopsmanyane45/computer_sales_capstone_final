-----2.dim_date 
-----Drop table
-----Create PK 
-----Check if PK created (SELECT)
-----INSERT INTO 
----
DROP TABLE [Computer_std].[dbo].[dim_Date]
CREATE TABLE [Computer_std].[dbo].[dim_Date](
    [Date_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
) 
----Check if the PK is created 
 SELECT * FROM [Computer_std].[dbo].[dim_Date]

 ---INSERTING values 
INSERT INTO [Computer_std].[dbo].[dim_Date](Purchase_Date,Ship_Date)
SELECT DISTINCT
       [Purchase_Date]
      ,[Ship_Date]
  FROM [Computer_std].[dbo].[raw_pc_data]

   SELECT * FROM [Computer_std].[dbo].[dim_Date]