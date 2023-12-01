SELECT DateKey ,
	   FullDateAlternateKey As Date ,
	   EnglishDayNameOfWeek As Day_ ,
	   WeekNumberOfYear ,
	   EnglishMonthName As Month ,
	   MonthNumberOfYear As Month_Number,
	   LEFT(EnglishMonthName ,3) As Month_Short ,
	   CalendarQuarter As Quarter ,
	   CalendarYear As Year 	  
FROM DimDate
WHERE CalendarYear >= 2022;
