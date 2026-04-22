
SELECT * FROM[Computer_std].[dbo].[dim_customer]
 
----1.dim_customer (Has ALL DIM TABLES 
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
SELECT [Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
   FROM [Computer_std].[dbo].[raw_pc_data]

---- Check if customer values are added 
   SELECT * FROM [Computer_std].[dbo].[dim_customer]

-----2.dim_date 
-----Drop table
-----Create PK 
-----Check if PK created (SELECT)
-----INSERT INTO 
----
DROP TABLE [Computer_std].[dbo].[dim_Date]
CREATE TABLE [Computer_std].[dbo].[dim_Date](
    [Date_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL
) 
----Check if the PK is created 
 SELECT * FROM [Computer_std].[dbo].[dim_Date]

 ---INSERTING values 
INSERT INTO [Computer_std].[dbo].[dim_Date](Purchase_Date,Ship_Date)
SELECT 
       [Purchase_Date]
      ,[Ship_Date]
  FROM [Computer_std].[dbo].[raw_pc_data]

   SELECT * FROM [Computer_std].[dbo].[dim_Date]

   
  ----3.dim–loation  
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
 SELECT[Continent]
      ,[Country_or_State]
      ,[Province_or_City]
 FROM [Computer_std].[dbo].[raw_pc_data]

  SELECT * FROM [Computer_std].[dbo].[dim_location]

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
SELECT 
      [Payment_Method]
FROM [Computer_std].[dbo].[raw_pc_data]
---Check if values were inserted correctly 
SELECT * FROM [Computer_std].[dbo].[dim_payment_method]

----5.dim_product 
DROP TABLE [Computer_std].[dbo].[dim_product]
CREATE TABLE [Computer_std].[dbo].[dim_product](
    [Product_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL
) 
---check if PK created sucsesfully 
SELECT * FROM [Computer_std].[dbo].[dim_product]
------INSERT INTO dim_product 
INSERT INTO [Computer_std].[dbo].[dim_product](PC_Make,PC_Model,Storage_Type,RAM)
SELECT [PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[RAM]
  FROM  [Computer_std].[dbo].[raw_pc_data]
  ---check if values were inserted correctly with PK 
  SELECT * FROM [Computer_std].[dbo].[dim_product]

  ----6.dim_salesperson
DROP TABLE [Computer_std].[dbo].[dim_salesperson]
CREATE TABLE [Computer_std].[dbo].[dim_salesperson](
	[Salesperson_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Sales_Person_Name] [nvarchar](50) NOT NULL,
	[Sales_Person_Department] [nvarchar](50) NOT NULL
) 
----Check PK ? 
SELECT * FROM [Computer_std].[dbo].[dim_salesperson]
---INSERT INTO dim_salesperson
INSERT INTO [Computer_std].[dbo].[dim_salesperson](Sales_Person_Name,Sales_Person_Department)
SELECT  [Sales_Person_Name]
      ,[Sales_Person_Department]
   --- INTO [Computer_std].[dbo].[dim_salesperson]
  FROM [Computer_std].[dbo].[raw_pc_data]  ---Remeber getting recordds from the raw.cpdata)
  ---Check if PK plus the values are correct 
  SELECT * FROM  [Computer_std].[dbo].[dim_salesperson]

  ----7.dim_store
DROP TABLE [Computer_std].[dbo].[dim_store]
CREATE TABLE [Computer_std].[dbo].[dim_store](
	[Store_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](50) NOT NULL,
	[Shop_Age] [nvarchar](50) NOT NULL
) 
---Check PK ?
SELECT * FROM [Computer_std].[dbo].[dim_store]
-------INSERT INTO 
INSERT INTO [Computer_std].[dbo].[dim_store](Shop_Name,Shop_Age)
SELECT  [Shop_Name]  
       ,[Shop_Age]
FROM [Computer_std].[dbo].[raw_pc_data]
----Check if the PK was added and avlues are correct 
SELECT * FROM [Computer_std].[dbo].[dim_store]

---8.insert_into_dim_sales
DROP TABLE [Computer_std].[dbo].[fact_sales]
CREATE TABLE [Computer_std].[dbo].[fact_sales](
	[Sales_ID] INT IDENTITY(1,1) PRIMARY KEY,
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

INSERT INTO [Computer_std].[dbo].[fact_sales]( Cost_Price,Sale_Price,Discount_Amount,Finance_Amount,
											   Credit_Score,Cost_of_Repairs,Total_Sales_per_Employee,PC_Market_Price)
 SELECT 
      [Cost_Price]
      ,[Sale_Price]
      ,[Discount_Amount]
      ,[Finance_Amount]
      ,[Credit_Score]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
 FROM [Computer_std].[dbo].[raw_pc_data]
  


