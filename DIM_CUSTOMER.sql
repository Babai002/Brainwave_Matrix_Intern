-- Cleansed DIM_Customers Table --
SELECT 
  c.customerkey AS CustomerKey, 
  -- ,[GeographyKey]
  -- ,[CustomerAlternateKey]
  --  ,[Title]
  c.firstname AS [FirstName], 
  --  ,[MiddleName]
  C.lastname AS [LastName], 
  c.firstname + ' ' + lastname AS [Full Name], 
  -- Combined First and Last Name --
  --   ,[NameStyle]
  -- ,[BirthDate]
  --    ,[MaritalStatus]
  --  ,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --   ,[Gender]
  --   ,[EmailAddress]
  -- ,[YearlyIncome]
  --  ,[TotalChildren]
  --    ,[NumberChildrenAtHome]
  --  ,[EnglishEducation]
  --    ,[SpanishEducation]
  --  ,[FrenchEducation]
  --,[EnglishOccupation]
  --   ,[SpanishOccupation]
  --    ,[FrenchOccupation]
  --  ,[HouseOwnerFlag]
  --   ,[NumberCarsOwned]
  --     ,[AddressLine1]
  --   ,[AddressLine2]
  -- ,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --  ,[CommuteDistance]
  g.city AS [Customer City] -- Joined in customer city from Geography Table
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey
