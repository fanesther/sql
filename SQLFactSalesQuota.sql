Select DimEmployee.EmployeeNationalIDAlternateKey "Employee ID",
	   DimEmployee.FirstName "Employee First Name",
	   DimEmployee.LastName "Employee Last Name",
	   DimEmployee.DepartmentName,
	   DimEmployee.Title,
	   DimEmployee.Status,
	   DimEmployee.SalesTerritoryKey,
	   FactSalesQuota.SalesAmountQuota "Sales",
	   FactSalesQuota.Date
from  dbo.FactSalesQuota 
left join dbo.DimDate 
on FactSalesQuota.[DateKey] = DimDate.[DateKey]
left join dbo.DimEmployee
on FactSalesQuota.[EmployeeKey] = DimEmployee.[EmployeeKey]

-- Which days has the most sales in record?
order by "SalesAmountQuota" desc
-- It's on 2011-12-29 which has $1898000 sales in record.