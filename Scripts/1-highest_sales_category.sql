-- Which product category had the highest sales?

SELECT
    Product_Category,
	SUM(Sales)
FROM orders
GROUP BY Product_Category
ORDER BY SUM(Sales) DESC
LIMIT 1;
