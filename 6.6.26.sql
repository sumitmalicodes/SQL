Select * from Products;
Select * from SubCategories;
Select * from Brands;
Select * from Categories;

select count(*) as Total_products from Products;
select max(price) as Max_price from Products;
select min(price) as Min_price from Products;
select avg(price) as Avg_price from Products;
select sum(price) as Sum_price from Products;

SELECT
    COUNT(*) AS Total_Products,
    MAX(Price) AS Max_Price,
    MIN(Price) AS Min_Price,
    AVG(Price) AS Avg_Price,
    SUM(Price) AS Total_Price
FROM Products;

--LEN();
--UPPER();
--LOWER();
--CONCAT();
SELECT
    ProductName,
    LEN(ProductName) AS NameLength,
    UPPER(ProductName) AS UpperName,
    LOWER(ProductName) AS LowerName
FROM Products;


SELECT
    ProductName,

    LEN(ProductName) AS NameLength,

    UPPER(ProductName) AS UpperName,

    LOWER(ProductName) AS LowerName,

    CONCAT(ProductName, ' Product') AS ConcatenatedText,

    LEFT(ProductName, 3) AS First3Chars,

    RIGHT(ProductName, 3) AS Last3Chars,

    SUBSTRING(ProductName, 2, 5) AS SubStringText,

    REPLACE(ProductName, 'a', '@') AS ReplacedText,

    CHARINDEX('a', ProductName) AS PositionOfA,

    LTRIM(ProductName) AS LeftTrimmed,

    RTRIM(ProductName) AS RightTrimmed,

    TRIM(ProductName) AS FullyTrimmed,

    REVERSE(ProductName) AS ReversedText

FROM Products;


SELECT GETDATE() AS CurrentDateTime;
-- Current Date and Time
SELECT GETDATE() AS CurrentDateTime;

-- Current Date Only
SELECT CAST(GETDATE() AS DATE) AS CurrentDate;

-- Current Time Only
SELECT CAST(GETDATE() AS TIME) AS CurrentTime;

-- Add 7 Days
SELECT DATEADD(DAY, 7, GETDATE()) AS After7Days;

-- Subtract 7 Days
SELECT DATEADD(DAY, -7, GETDATE()) AS Before7Days;

-- Get Year
SELECT YEAR(GETDATE()) AS CurrentYear;

-- Get Month
SELECT MONTH(GETDATE()) AS CurrentMonth;

-- Get Day
SELECT DAY(GETDATE()) AS CurrentDay;

SELECT 'SUMIT' AS "User"



select * from Products
INNER JOIN Categories
ON Products.CategoryId=Categories.CategoryId;

select * from Products
LEFT JOIN Categories
ON Products.CategoryId=Categories.CategoryId;

select * from Products
RIGHT JOIN Categories
ON Products.CategoryId=Categories.CategoryId;
