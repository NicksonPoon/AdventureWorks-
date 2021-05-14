/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS 'Product Item Code', 
  --    [ProductSubcategoryKey]
  --      ,[WeightUnitMeasureCode]
  --      ,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Sub Category], 
  --Joined in from Sub Category Table
  pc.EnglishProductCategoryName AS [Product Cateogry], 
  -- Joined in from Category Table
  --      ,[SpanishProductName]
  --      ,[FrenchProductName]
  --      ,[StandardCost]
  --      ,[FinishedGoodsFlag]
  p.[Color] AS [Product Color], 
  --      ,[SafetyStockLevel]
  --      ,[ReorderPoint]
  --     ,[ListPrice]
  p.[Size] AS [Product Size], 
  --      ,[SizeRange]
  --      ,[Weight]
  --      ,[DaysToManufacture]
  p.[ProductLine] AS [Product Line], 
  --      ,[DealerPrice]
  --      ,[Class]
  --      ,[Style]
  p.[ModelName] AS [Product Model Name], 
  --      ,[LargePhoto]
  p.[EnglishDescription] AS [Product Description], 
  --      ,[FrenchDescription]
  --      ,[ChineseDescription]
  --      ,[ArabicDescription]
  --      ,[HebrewDescription]
  --      ,[ThaiDescription]
  --      ,[GermanDescription]
  --      ,[JapaneseDescription]
  --      ,[TurkishDescription]
  --      ,[StartDate]
  --      ,[EndDate]
  ISNULL(p.[Status], 'OutDated') AS [Product Status] 
FROM 
  [dbo].[DimProduct] as p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  P.ProductKey ASC
