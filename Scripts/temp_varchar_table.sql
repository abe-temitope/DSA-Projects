/*
 Script: Create Staging Table for CSV Import
 Author: Abe Temitope Moses (AbeLytics)
 Purpose:
    - Define a temporary/staging table `order` to hold raw 
      CSV data exactly as it appears in the file
    - All columns are created as VARCHAR(255) to allow any 
      data format during import without type conversion errors
    - Column names match the CSV headers exactly (with spaces)
 Usage:
    - Step 1 of ETL pipeline: 
      Load raw data here first using LOAD DATA INFILE
    - Step 2: Clean and transform data before moving it 
      into the final production table with correct data type
*/

CREATE TABLE `order` (
    `Row ID` varchar(255),
    `Order ID` varchar(255),
    `Order Date` varchar(255),
    `Order Priority` varchar(255),
    `Order Quantity` varchar(255),
    `Sales` varchar(255),
    `Discount` varchar(255),
    `Ship Mode` varchar(255),
    `Profit` varchar(255),
    `Unit Price` varchar(255),
    `Shipping Cost` varchar(255),
    `Customer Name` varchar(255),
    `Province` varchar(255),
    `Region` varchar(255),
    `Customer Segment` varchar(255),
    `Product Category` varchar(255),
    `Product Sub-Category` varchar(255),
    `Product Name` varchar(255),
    `Product Container` varchar(255),
    `Product Base Margin` varchar(255),
    `Ship Date` varchar(255)
);