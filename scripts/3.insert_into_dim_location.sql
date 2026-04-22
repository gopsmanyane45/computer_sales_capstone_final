DROP TABLE [Computer_std].[dbo].[dim_location]
CREATE TABLE [Computer_std].[dbo].[dim_location](
	[Continent_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Continent] [nvarchar](50) NOT NULL,
	[Country_or_State] [nvarchar](50) NOT NULL,
	[Province_or_City] [nvarchar](100) NOT NULL
)
------Check PK 
 SELECT * FROM [Computer_std].[dbo].[dim_location]

 INSERT INTO [Computer_std].[dbo].[dim_location](Continent,Country_or_State,Province_or_City)
 SELECT DISTINCT [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
 FROM [Computer_std].[dbo].[raw_pc_data]

  SELECT * FROM [Computer_std].[dbo].[dim_location]
