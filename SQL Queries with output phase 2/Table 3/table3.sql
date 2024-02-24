USE rentberry;

-- table3

-- 1) Write a SQL query to Select records where both Washer/Dryer and AC are available, and order by Sno.
SELECT * FROM rentberry.table3 WHERE Washer/Dryer = 'Yes' AND Air_Conditioning = 'YES'
ORDER BY Sno ASC;

-- 2) Write a SQL query to Select records where Hardwood floors are available but neither Roofdeck nor Storage is present, and order by Sno in descending order.
SELECT * FROM rentberry.table3 WHERE Hardwood_floor = 'Yes' AND Roofdeck = 'No' AND Storage = 'No' 
ORDER BY Sno;

-- 3) Write a SQL query to Select records where at least four amenities (AC, Parking, Dishwasher, Fireplace) are available, and order by Sno .
SELECT * FROM rentberry.table3 WHERE Air_Conditioning = 'Yes' AND Parking = 'Yes' AND 
Dishwasher = 'Yes' AND Fireplace = 'Yes' ORDER BY Sno;

-- 4) Write a SQL query to Select records where neither Roofdeck nor Storage is available, and include the count of such records.
SELECT COUNT(Roofdeck),Count(Storage) FROM rentberry.table3 WHERE Roofdeck = 'No' AND Storage = 'No' GROUP BY Roofdeck,Storage;

-- 5) Write a SQL query to Select records with Parking and either Fireplace or Dishwasher, and include the count of records for each condition.
SELECT DISTINCT Parking,Count(Parking),Fireplace,Count(Fireplace),Dishwasher,Count(Dishwasher) FROM rentberry.table3
GROUP BY Parking,Fireplace,Dishwasher;