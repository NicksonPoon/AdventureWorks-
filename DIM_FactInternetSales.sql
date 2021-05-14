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
  --      ,[ProductStandardCost]
  --      ,[TotalProductCost]
  [SalesAmount] 
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
  LEFT(OrderDateKey, 4) >= YEAR(
    GETDATE() -2
  ) --Ensures we always get data within the last two years
ORDER BY 
  OrderDateKey ASC
