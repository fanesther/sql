--FactSurveyResponse, DimDate and DimCustomer
Select --fsr.SurveyResponseKey "CaseID",
       dd.DateKey "Case Date",
	   count(dc.CustomerKey) "Number of Customers",
	   fsr.ProductCategoryKey "Product Category",
	   fsr.EnglishProductCategoryName "Category Name",
	   fsr.EnglishProductSubcategoryName "Product Name"

from dbo.FactSurveyResponse as fsr
left join dbo.DimDate as dd
on fsr.[DateKey] = dd.[DateKey]
left join dbo.DimCustomer as dc
on fsr.[CustomerKey] = dc.[CustomerKey]

group by dd.DateKey,fsr.ProductCategoryKey,fsr.EnglishProductCategoryName,fsr.EnglishProductSubcategoryName
order by "Number of Customers" desc

--Which date has the most customer suvery response?
--Both 20120312 and 20120417 have 8 customer surveys.