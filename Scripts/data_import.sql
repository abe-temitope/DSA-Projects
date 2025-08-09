LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/KMS Sql case study cleaned.csv'
INTO TABLE kms_inventory.order
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
/*
 Script: Bulk CSV Import into Staging Table
 Author: Abe Temitope Moses (AbeLytics)
 Purpose:
    - Load raw, cleaned CSV data into the staging table
      `kms_inventory.order` for further processing
 Key Parameters:
    - CHARACTER SET latin1 → Prevents UTF-8 character errors 
      from special symbols in the CSV
    - FIELDS TERMINATED BY ',' → Splits columns by comma
    - ENCLOSED BY '"' → Handles text fields that contain commas
    - LINES TERMINATED BY '\n' → Marks the end of each record
    - IGNORE 1 ROWS → Skips CSV header row
 Notes:
    - `kms_inventory.order` is a temporary/staging table 
      before cleaning and transfer to the final table.
*/