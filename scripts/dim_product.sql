SELECT [PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[RAM]
    FROM [Computer_std].[dbo].[raw_pc_data]
  
----------
SELECT [PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[RAM]
  INTO [Computer_std].[dbo].[dim_product]
  FROM  [Computer_std].[dbo].[raw_pc_data]


