---8.insert_into_dim_sales
DROP TABLE [Computer_std].[dbo].[fact_sales]  
CREATE TABLE [Computer_std].[dbo].[fact_sales](
	[Sales_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[CustomerID] [int] NOT NULL,
	[Date_ID] INT,
	[Continent_ID] INT ,    
	[Paymentmethod_ID] INT,
	[Product_ID] INT,
	[Salesperson_ID] INT,
	[Store_ID] INT,
	[Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL
) 
SELECT * FROM [Computer_std].[dbo].[fact_sales]

INSERT INTO [Computer_std].[dbo].[fact_sales]
	(
		    [CustomerID],
	        [Date_ID],
	        [Continent_ID],    
	        [Paymentmethod_ID],
	        [Product_ID],
	        [Salesperson_ID],
	        [Store_ID],
			[Cost_Price],
			[Sale_Price],
			[Discount_Amount],
			[Finance_Amount],
			[Credit_Score],
			[Cost_of_Repairs],
			[Total_Sales_per_Employee],
			[PC_Market_Price]
			)
 SELECT DISTINCT
       [CustomerID],
	   [Date_ID] ,
	   [Continent_ID],    
	   [Paymentmethod_ID],
	   [Product_ID],
	   [Salesperson_ID],
	   [Store_ID],
       [Cost_Price] 
      ,[Sale_Price]
      ,[Discount_Amount]
      ,[Finance_Amount]
      ,[Credit_Score]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
 FROM [Computer_std].[dbo].[raw_pc_data]

 SELECT * FROM [Computer_std].[dbo].[fact_sales]