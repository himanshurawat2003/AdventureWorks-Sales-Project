SELECT P.ProductKey ,
	   P.ProductAlternateKey As [Product Code] ,
	   P.EnglishProductName As [Product Name] ,
	   P.ModelName As [Product Model Name] ,
	   PC.EnglishProductCategoryName As [Product Category Name] ,
	   PS.EnglishProductSubcategoryName As [Product Subcategory Name] ,
	   P.Color As [Product Colour] ,
	   P.Size As [Product Size] ,
	   P.ProductLine As [Product Line] ,
	   ISNULL(p.Status ,'Outdated' ) As [Product Status] ,
	   P.EnglishDescription As [Product Description] 
FROM DimProduct As P
JOIN DimProductSubCategory As PS On PS.ProductSubcategoryKey = P.ProductSubcategoryKey
JOIN DimProductCategory As PC On PC.ProductCategoryKey = PS.ProductCategoryKey
ORDER BY P.ProductKey ASC ;