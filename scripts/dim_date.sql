SELECT 
      
      [Purchase_Date]
      ,[Ship_Date]
      
  FROM [Computer_std].[dbo].[raw_pc_data]

  SELECT 
      
      [Purchase_Date]
      ,[Ship_Date]
  INTO [Computer_std].[dbo].[dim_Date]
  FROM [Computer_std].[dbo].[raw_pc_data]
