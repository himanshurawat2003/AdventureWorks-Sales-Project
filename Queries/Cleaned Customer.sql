SELECT C.CustomerKey ,
	   C.FirstName As [First Name] ,
	   C.LastName As [Last Name] ,
	   C.FirstName +' '+LastName As [Full Name] ,
	   C.BirthDate As [DOB] ,
	   CASE When Gender = 'M' Then 'Male' Else 'Female' END As Gender ,
	   G.City ,
	   G.EnglishCountryRegionName As Country ,
	   C.DateFirstPurchase
FROM DimCustomer As C
JOIN DimGeography As G ON G.GeographyKey = C.GeographyKey
ORDER BY C.CustomerKey
