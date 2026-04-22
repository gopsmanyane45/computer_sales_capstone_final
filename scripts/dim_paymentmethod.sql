SELECT DISTINCT
      
      [Payment_Method]
     
  FROM [Computer_std].[dbo].[raw_pc_data]

  SELECT 
      
      [Payment_Method]
  INTO [Computer_std].[dbo].[dim_payment_method]   
  FROM [Computer_std].[dbo].[raw_pc_data]
