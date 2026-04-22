SELECT [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
      
  FROM [Computer_std].[dbo].[raw_pc_data]


  SELECT [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
  INTO [Computer_std].[dbo].[dim_customer]
  FROM [Computer_std].[dbo].[raw_pc_data]