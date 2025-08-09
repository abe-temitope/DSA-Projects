-- What are the Top 3 and Bottom 3 regions in terms of sales?
(SELECT
    Region,
    SUM(Sales) AS Total_sales
FROM orders
GROUP BY Region
ORDER BY SUM(Sales) DESC
LIMIT 3)
UNION ALL
(SELECT
    Region,
    SUM(Sales) AS Total_sales
FROM orders
GROUP BY Region
ORDER BY SUM(Sales) ASC
LIMIT 3);

