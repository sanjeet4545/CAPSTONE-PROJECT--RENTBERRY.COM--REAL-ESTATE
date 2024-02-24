USE Rentberry;
-- table1 query --

-- 1) Write a SQL query to order records by a rental price  column in ascending order.
SELECT * from rentberry.table1 ORDER BY rentel_price ASC;

-- 2) Write a SQL query  to select unique combinations of City and State with their average Rental Price.
SELECT DISTINCT City,Country,rentel_price FROM rentberry.table1; 

 -- 3) Write a SQL query to select the top 5 highest deposit amounts with corresponding Address and City .
SELECT Address,City,Deposit FROM rentberry.table1 ORDER BY Deposit DESC LIMIT 5;

-- 4) Write a SQL query to select the count of records for each Country along with the total deposit amount.
SELECT Country,COUNT(*) AS 'Count',SUM(Deposit) AS 'Total_Deposit' FROM rentberry.table1
GROUP BY Country ORDER BY Total_Deposit DESC;

-- 5) Write a SQL query to select records with a Rental Price higher than the average Rental Price across all records.
SELECT * FROM rentberry.table1 WHERE Rentel_price > (SELECT AVG(Rentel_price) FROM rentberry.table1)