-- Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers
SELECT
	Customer_Name, Order_ID, Order_Priority,
    Order_Quantity, Product_Category, Product_Name,
    SUM(Sales) Total_sales
FROM orders
GROUP BY
	Customer_Name, Customer_Name, Order_ID,
    Order_Priority, Product_Category, Product_Name,
	Order_Quantity
ORDER BY SUM(Sales) ASC
LIMIT 10;

/*	MY ADVICE TO THE MANAGEMENT TEAM OF KMS ON HOW TO INCREASE THE REVENUE OF THE BUTTOM CUSTOMERS
1. Focus on Upselling and Cross-selling
The bottom 10 customers are all purchasing low-cost, low-margin "Office Supplies" with low order quantities.
The management team should focus on strategies to encourage them to buy more.
Upselling: Offer larger or higher-priced versions of the products they're already buying (e.g., a "Jumbo Pack" of binder clips instead of a single pack).
Cross-selling: Recommend complementary products. For example, when a customer buys a binder, suggest purchasing page dividers or sheet protectors.

2. Implement Targeted Promotional Bundles
Instead of selling individual, low-cost items, group them into high-value bundles.
Example: Create a "Back-to-School" or "Office Starter Pack" that includes binders, paper, pens, and clips. These bundles could be offered at a slight discount to encourage a higher average order value.

3. Re-engage with Customer-Specific Offers
The low sales and varied Order Priority suggest that these customers might not be highly engaged.
Management should consider using customer-specific data to create personalized promotions.
Create Targeted Campaigns: Send an email with a "Get 20% off your next order" coupon specifically for these customers,
or offer free shipping on orders over a certain amount to encourage them to buy more than just one or two items.

These strategies move the business away from a "single, cheap item" mindset and toward building a more profitable relationship with these customers.
*/
    