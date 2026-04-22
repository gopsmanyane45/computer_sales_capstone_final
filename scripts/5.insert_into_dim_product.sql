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
SELECT DISTINCT[PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[RAM]
  FROM  [Computer_std].[dbo].[raw_pc_data]
  ---check if values were inserted correctly with PK 
  SELECT * FROM [Computer_std].[dbo].[dim_product]