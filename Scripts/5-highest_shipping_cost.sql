-- KMS incurred the most shipping cost using which shipping method?
SELECT
	Ship_Mode,
    SUM(Shipping_Cost) Total_shipping_cost
FROM orders
GROUP BY Ship_Mode
ORDER BY Total_shipping_cost DESC