SELECT * 
FROM video_games_sales;

-- Q1: Total global video game sales by genre
SELECT ROUND(SUM(Global_Sales),2) AS total_global_sales, Genre
FROM video_games_sales
GROUP BY Genre
ORDER BY total_global_sales DESC;

-- Q2: Global video game sales trends over time
SELECT Year,  ROUND(SUM(Global_Sales),2) AS total_global_sales
FROM video_games_sales
GROUP BY Year
ORDER BY Year;

-- Q3: Top 10 best-selling video games worldwide
SELECT Name, ROUND(SUM(global_sales),2) AS total_global_sales
FROM video_games_sales
GROUP BY Name
ORDER BY total_global_sales DESC
LIMIT 10;

-- Q4: Regional contribution to total global video game sales
SELECT 
SUM(NA_Sales)/SUM(Global_Sales)*100 AS NA_Sales_Percentage,
SUM(EU_Sales)/SUM(Global_Sales)*100 AS EU_Sales_Percentage,
SUM(JP_Sales)/SUM(Global_Sales)*100 AS JP_Sales_Percentage,
SUM(Other_Sales)/SUM(Global_Sales)*100 As Other_Sales_Percentage
FROM video_games_sales;