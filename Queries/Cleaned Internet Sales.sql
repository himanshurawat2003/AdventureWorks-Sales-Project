SELECT ProductKey ,
	   OrderDateKey ,
	   DueDateKey ,
	   ShipDateKey ,
	   CustomerKey ,
	   SalesOrderNumber ,
	   SalesAmount 
FROM FactInternetSales
WHERE LEFT (OrderDateKey,4) >= YEAR(GetDate()) -1
ORDER BY OrderDateKey DESC;