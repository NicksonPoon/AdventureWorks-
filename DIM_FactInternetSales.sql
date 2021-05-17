-- Cleansed FactInternetSales Table --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey],
  --      ,[PromotionKey] 
  [CurrencyKey], 
  --      ,[SalesTerritoryKey]
  [SalesOrderNumber] ,
  --      ,[SalesOrderLineNumber]
  --      ,[RevisionNumber]
  --     ,[OrderQuantity]
  --      ,[UnitPrice]
  --      ,[ExtendedAmount]
  --      ,[UnitPriceDiscountPct]
  --      ,[DiscountAmount]
  --  [TotalProductCost]
  [SalesAmount],
   [SalesAmount] - [ProductStandardCost] AS 'Profit',
   [SalesAmount] / [ProductStandardCost] * 100 AS 'Profit Percentage'
  --      ,[TaxAmt]
  --      ,[Freight]
  --      ,[CarrierTrackingNumber]
  --      ,[CustomerPONumber]
  --     ,[OrderDate]
  --     ,[DueDate]
  --     ,[ShipDate]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE
ShipDateKey <= 20201231

ORDER BY 
  OrderDateKey ASC
