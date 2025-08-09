
CREATE TABLE kms_inventory.orders (
    Row_ID INT,
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Order_Priority VARCHAR(20),
    Order_Quantity INT,
    Sales DECIMAL(10,2),
    Discount DECIMAL(5,2),
    Ship_Mode VARCHAR(50),
    Profit DECIMAL(10,2),
    Unit_Price DECIMAL(10,2),
    Shipping_Cost DECIMAL(10,2),
    Customer_Name VARCHAR(100),
    Province VARCHAR(100),
    Region VARCHAR(50),
    Customer_Segment VARCHAR(50),
    Product_Category VARCHAR(50),
    Product_Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Product_Container VARCHAR(50),
    Product_Base_Margin DECIMAL(5,2),
    Ship_Date DATE
);
