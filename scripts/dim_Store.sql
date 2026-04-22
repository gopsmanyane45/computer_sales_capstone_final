    SELECT 
          [Shop_Name]
          ,[Shop_Age]
      
      FROM [Computer_std].[dbo].[raw_pc_data]

    SELECT 
          [Shop_Name]
          ,[Shop_Age]
      INTO [Computer_std].[dbo].[dim_store]
      FROM [Computer_std].[dbo].[raw_pc_data]