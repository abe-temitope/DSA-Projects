SHOW VARIABLES LIKE "secure_file_priv";

SHOW CREATE TABLE kms_inventory.orders;

/* 
    1. SHOW VARIABLES LIKE "secure_file_priv";
       - Displays the directory MySQL allows for reading/writing 
         files using LOAD DATA INFILE or SELECT ... INTO OUTFILE
       - Useful for ensuring CSV file location is permitted

    2. SHOW CREATE TABLE kms_inventory.orders;
       - Returns the exact CREATE TABLE statement used to build 
         the final `orders` table
       - Helps confirm column names, data types, constraints, and indexes
 Usage:
    - Run before importing data to check file permissions and 
      after table creation to verify schema correctness */
