
----1.dim_customer 
DROP TABLE [Computer_std].[dbo].[dim_customer]
CREATE TABLE [Computer_std].[dbo].[dim_customer](
    [Cusomer_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Customer_Surname] [nvarchar](50) NOT NULL,
	[Customer_Contact_Number] [nvarchar](50) NOT NULL,
	[Customer_Email_Address] [nvarchar](50) NOT NULL
) 
---DROP TABLE [Computer_std].[dbo].[dim_customer]

---Check if the PK was created 
SELECT * FROM [Computer_std].[dbo].[dim_customer]

----//TRUNCATE TABLE [Computer_std].[dbo].[dim_customer] ( Removes the all the rows ) 
INSERT INTO [Computer_std].[dbo].[dim_customer](Customer_Name,Customer_Surname,Customer_Contact_Number,Customer_Email_Address)
SELECT DISTINCT [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
   FROM [Computer_std].[dbo].[raw_pc_data]

---- Check if customer values are added 
   SELECT * FROM [Computer_std].[dbo].[dim_customer]