----4.dim_paymentmethod
DROP TABLE [Computer_std].[dbo].[dim_payment_method]
CREATE TABLE [Computer_std].[dbo].[dim_payment_method](
    [Paymentmethod_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Payment_Method] [nvarchar](50) NOT NULL
)
----Check if PK created 
SELECT * FROM [Computer_std].[dbo].[dim_payment_method]
---INSERT INTO 
INSERT INTO [Computer_std].[dbo].[dim_payment_method](Payment_Method)
SELECT DISTINCT
      [Payment_Method]
FROM [Computer_std].[dbo].[raw_pc_data]
---Check if values were inserted correctly 
SELECT * FROM [Computer_std].[dbo].[dim_payment_method]