SELECT Product_Name, ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM sales.sales_data
GROUP BY Product_Name
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT Category, ROUND(SUM(Revenue), 2) AS Total_Revenue,
ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales.sales_data
GROUP BY Category
ORDER BY Total_Revenue DESC;

SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
ROUND(SUM(Revenue), 2) AS Monthly_Revenue
FROM sales.sales_data
GROUP BY Month
ORDER BY Month;

SELECT Region,
ROUND(SUM(Revenue), 2) AS Total_Revenue,
ROUND(SUM(Profit), 2) AS Total_Profit,
ROUND((SUM(Profit) / SUM(Revenue)) * 100, 2) AS Profit_Margin_Pct
FROM sales.sales_data
GROUP BY Region
ORDER BY Profit_Margin_Pct DESC;