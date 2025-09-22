SELECT*
FROM bike_sales_data;

CREATE TABLE bike_data
LIKE bike_sales_data;

SELECT*
FROM bike_data;

INSERT bike_data
SELECT*
FROM bike_sales_data;

SELECT*
FROM bike_data;

SELECT*,
ROW_NUMBER() OVER(
PARTITION BY  'Date', Day, Month, Year, Customer_Age, Age_group, Customer_Gender, Country, State, Product_Category, Sub_Category, Product_Description, Order_Quantity, Unit_Cost, Unit_Price, Profit, Cost, Revenue
) AS row_num
FROM bike_data;

WITH Duplicate_CTE AS
(
SELECT*,
ROW_NUMBER() OVER(
PARTITION BY  'Date', Day, Month, Year, Customer_Age, Age_group, Customer_Gender, Country, State, Product_Category, Sub_Category, Product_Description, Order_Quantity, Unit_Cost, Unit_Price, Profit, Cost, Revenue
) AS row_num
FROM bike_data
)
SELECT*
FROM  Duplicate_CTE
WHERE row_num >1;

SELECT Country, TRIM(Country)
FROM bike_data;
UPDATE bike_data
SET Country = TRIM(Country);

SELECT State, TRIM(State)
FROM bike_data;
UPDATE bike_data
SET State = TRIM(State);

SELECT Day
FROM bike_data
WHERE Day LIKE '';


UPDATE bike_data
SET Day = '5'
WHERE Day LIKE '';

SELECT*
FROM bike_data
WHERE AGE_GROUP LIKE '';

UPDATE bike_data
SET Age_group = 'Adults (35-64)'
WHERE Age_group LIKE '';


SELECT*
FROM bike_data
WHERE Product_Description LIKE 'Mountain-200 Black, 46';

UPDATE bike_data
SET Product_Description = 'Mountain-200 Black, 46'
WHERE Product_Description LIKE '';

SELECT*
FROM bike_data;

SELECT*
FROM bike_data
WHERE Unit_Cost  LIKE '$0.00 ';

UPDATE bike_data
SET Unit_cost = '$1,252.00 '
WHERE unit_cost LIKE '$0.00 ';

SELECT*
FROM bike_data
WHERE Order_Quantity LIKE '';

UPDATE bike_data
SET Order_Quantity = '1'
WHERE Order_quantity LIKE '';

SELECT *
FROM bike_data
WHERE Id = '5';
UPDATE bike_data
SET Cost = '$2,504.00'
WHERE Id LIKE '5'; 

SELECT *
FROM bike_data
WHERE Id = '23';
UPDATE bike_data
SET Cost = '$295.00'
WHERE Id LIKE '23'; 

SELECT *
FROM bike_data
WHERE Id = '23';
UPDATE bike_data
SET Revenue = '$540.00 '
WHERE Id LIKE '23'; 

SELECT *
FROM bike_data
WHERE Id = '9';
UPDATE bike_data
SET Revenue = '$3,076.00'
WHERE Id LIKE '9'; 

UPDATE bike_data
SET Unit_Price = '$769.00 '
WHERE Id LIKE '9'; 

UPDATE bike_data
SET Customer_Gender = 'Male'
WHERE Customer_Gender LIKE 'M'; 

UPDATE bike_data
SET Customer_Gender = 'Female'
WHERE Customer_Gender LIKE 'M'; 

UPDATE bike_data
SET Month = 'December'
WHERE Month LIKE 'Decmber'; 






















