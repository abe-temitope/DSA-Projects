-- What were the total sales of appliances in Ontario?

SELECT 
    Province,
    Product_Sub_Category,
    SUM(Sales) Total_sales
FROM orders
WHERE Province = 'Ontario' AND Product_Sub_Category = "Appliances"