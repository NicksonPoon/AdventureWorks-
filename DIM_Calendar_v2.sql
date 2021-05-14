-- Cleaned DIM_DateTable --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date,
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek],
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  --,[DayNumberOfYear] 
  [WeekNumberOfYear] As WeekNum, 
  [EnglishMonthName] AS Month,
  LEFT([EnglishMonthName],3) AS MonthShort,
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] As MonthNum, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year
  -- ,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE 
	CalendarYear >= 2019