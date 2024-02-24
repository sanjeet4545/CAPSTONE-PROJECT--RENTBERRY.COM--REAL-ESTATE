USE Rentberry;
-- table2 query --

-- 1) Write a SQL query to select the average area for each number of bedrooms.
SELECT No_of_bed,COUNT(*),ROUND(AVG(Area)) AS 'Avg_Area' FROM rentberry.table2
GROUP BY No_of_bed;

-- 2) Write a SQL query to select records with more than one bathroom and pets allowed.
SELECT * FROM rentberry.table2 WHERE No_of_bathroom > 1 AND Pets = 'YES';

-- 3) Write a SQL query to select the top 3 records with the highest total area (bedrooms + bathrooms).
SELECT No_of_bed+No_of_bathroom AS 'total_area' FROM rentberry.table2 
ORDER BY total_area DESC LIMIT 3;

-- 4) Write a SQL query to select the count of records for each combination of bedrooms and bathrooms.
SELECT COUNT(*) AS 'Count ',No_of_bed+No_of_bathroom AS 'Total' FROM rentberry.table2
GROUP BY Total;

-- 5) Write a SQL query to select records with the largest area where pets are allowed.
SELECT MAX(Area) FROM rentberry.table2 WHERE pets = 'Yes';
