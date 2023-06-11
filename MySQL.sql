SELECT * FROM first_database.sales;

SELECT Country, SUM(Order_Quantity) AS Total_Quantity
FROM first_database.sales
GROUP BY Country;

SELECT Country, Customer_Gender, SUM(Order_Quantity) AS Total_Quantity
FROM first_database.sales
GROUP BY Country, Customer_Gender
ORDER BY Country;

SELECT Country, Product, Order_Quantity
FROM first_database.sales
ORDER BY Order_Quantity DESC
LIMIT 10;

SELECT Customer_Gender, AVG(Order_Quantity) AS Average_Quantity
FROM first_database.sales
GROUP BY Customer_Gender;

SELECT Month, Year, SUM(Revenue) AS Total_Revenue
FROM first_database.sales
GROUP BY Month, Year
ORDER BY Year, Month;

SELECT Age_Group, AVG(Customer_Age) AS Average_Age
FROM first_database.sales
GROUP BY Age_Group;

SELECT Year, SUM(Revenue) AS Total_Revenue, (SUM(Profit) / SUM(Revenue)) * 100 AS Profit_Margin
FROM first_database.sales
GROUP BY Year;

SELECT Product_Category, Sub_Category, AVG(Profit) AS Average_Profit
FROM first_database.sales
GROUP BY Product_Category, Sub_Category;

SELECT
    CONCAT(Month, '-', Year) AS Month_Year,
    SUM(Revenue) AS Total_Revenue,
    (SUM(Revenue) - LAG(SUM(Revenue)) OVER (ORDER BY Year, Month)) / LAG(SUM(Revenue)) OVER (ORDER BY Year, Month) * 100 AS Revenue_Growth_Rate
FROM first_database.sales
GROUP BY Month, Year
ORDER BY Year, Month;

SELECT
    CONCAT(Customer_Gender, '-', Country) AS Customer,
    SUM(Revenue) AS Lifetime_Value
FROM first_database.sales
GROUP BY Customer_Gender, Country
ORDER BY Lifetime_Value DESC;


