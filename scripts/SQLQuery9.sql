SELECT DISTINCT [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
      
  FROM [Computer_std].[dbo].[raw_pc_data]

---------------------------------------------

-----dim_Continent 

  SELECT DISTINCT [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
  INTO [Computer_std].[dbo].[dim_location]   
  FROM [Computer_std].[dbo].[raw_pc_data]

_________________

dim_Customer 


