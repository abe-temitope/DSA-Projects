-- 🚀 Step 1: Insert cleaned & type-safe data
-- Purpose: Move data from the staging table (`order`) into the final table (`orders`)
--          while converting text values into the correct data types
--          and replacing empty strings with NULL to avoid errors.

INSERT INTO kms_inventory.orders (
    Row_ID,                -- Integer ID for each row
    Order_ID,              -- Order reference code
    Order_Date,            -- Date when the order was placed
    Order_Priority,        -- Priority level of the order (e.g., High, Medium, Low)
    Order_Quantity,        -- Number of items in the order
    Sales,                 -- Total sales amount
    Discount,              -- Discount applied to the order
    Ship_Mode,             -- Shipping method used
    Profit,                -- Profit from the order
    Unit_Price,            -- Price per unit of product
    Shipping_Cost,         -- Cost of shipping
    Customer_Name,         -- Name of the customer
    Province,              -- Province of the customer
    Region,                -- Region of the customer
    Customer_Segment,      -- Customer segment (e.g., Consumer, Corporate)
    Product_Category,      -- Category of the product
    Product_Sub_Category,  -- Sub-category of the product
    Product_Name,          -- Full name of the product
    Product_Container,     -- Packaging/container type
    Product_Base_Margin,   -- Base profit margin for the product
    Ship_Date              -- Date when the product was shipped
)
SELECT
    -- Convert Row ID from text to integer, replacing empty strings with NULL
    CAST(NULLIF(`Row ID`, '') AS UNSIGNED),
    
    -- Order ID remains as text (alphanumeric)
    `Order ID`,
    
    -- Convert Order Date from text to DATE format (YYYY-MM-DD)
    STR_TO_DATE(NULLIF(`Order Date`, ''), '%Y-%m-%d'),
    
    -- Order Priority remains as text
    `Order Priority`,
    
    -- Convert Order Quantity from text to integer
    CAST(NULLIF(`Order Quantity`, '') AS UNSIGNED),
    
    -- Convert Sales to a decimal number with 2 decimal places
    CAST(NULLIF(Sales, '') AS DECIMAL(10,2)),
    
    -- Convert Discount to a decimal number with 2 decimal places
    CAST(NULLIF(Discount, '') AS DECIMAL(5,2)),
    
    -- Ship Mode remains as text
    `Ship Mode`,
    
    -- Convert Profit to a decimal number with 2 decimal places
    CAST(NULLIF(Profit, '') AS DECIMAL(10,2)),
    
    -- Convert Unit Price to a decimal number with 2 decimal places
    CAST(NULLIF(`Unit Price`, '') AS DECIMAL(10,2)),
    
    -- Convert Shipping Cost to a decimal number with 2 decimal places
    CAST(NULLIF(`Shipping Cost`, '') AS DECIMAL(10,2)),
    
    -- Customer Name remains as text
    `Customer Name`,
    
    -- Province remains as text
    Province,
    
    -- Region remains as text
    Region,
    
    -- Customer Segment remains as text
    `Customer Segment`,
    
    -- Product Category remains as text
    `Product Category`,
    
    -- Product Sub-Category remains as text
    `Product Sub-Category`,
    
    -- Product Name remains as text
    `Product Name`,
    
    -- Product Container remains as text
    `Product Container`,
    
    -- Convert Product Base Margin to a decimal with 2 decimal places
    CAST(NULLIF(`Product Base Margin`, '') AS DECIMAL(5,2)),
    
    -- Convert Ship Date from text to DATE format (YYYY-MM-DD)
    STR_TO_DATE(NULLIF(`Ship Date`, ''), '%Y-%m-%d')
FROM kms_inventory.`order`;  -- Staging table containing raw data loaded from CSV
