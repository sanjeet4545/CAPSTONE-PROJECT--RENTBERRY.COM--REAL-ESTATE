USE rentberry;

-- Join SQL Queries

-- 1) Write a SQL  subquery to find records with more than the average area and related details using table 1 and table 2.
SELECT * FROM rentberry.table2 t2 JOIN rentberry.table1 t1 ON t1.Sno = t2.Sno
WHERE Area > (SELECT AVG(Area) FROM rentberry.table2);

-- 2) Write a subquery to find records in table1 based on conditions pets allowed is ‘YES’  and no of bed is greater than 3 in table2.
SELECT * FROM rentberry.table1 t1 JOIN rentberry.table2 t2 ON t1.Sno = t2.Sno 
WHERE  No_of_bed > 3 AND Pets = 'Yes';

-- 3) Write a SQL subquery using both tables (2 and 3) to find records in Table2 with more than 2 bedrooms and related details from Table3 where AC is present.
SELECT * FROM rentberry.table2 t1 JOIN rentberry.table3 t2 ON t1.Sno = t2.Sno 
WHERE No_of_bed>2 AND Air_Conditioning = 'Yes';

-- 4) Write a sql subquery to find records in Table2 with pets allowed and a Dishwasher, and include related details from Table3.
SELECT * FROM rentberry.table2 t1 JOIN rentberry.table3 t2 ON t1.Sno = t2.Sno 
WHERE Pets = 'Yes' AND Dishwasher = 'Yes';

-- 5) Write a subquery to find records in Table2 with the highest area and related details from Table3 where roofdeck is present. 
SELECT * FROM rentberry.table2 t1 JOIN rentberry.table3 t2 ON t1.Sno = t2.Sno 
WHERE AREA = (SELECT MAX(Area) FROM rentberry.table2) AND Roofdeck = 'Yes';

-- 6) Write a sql Inner Join to combine information from table1 and table 2.
SELECT * FROM rentberry.table1 t1 INNER JOIN rentberry.table2 t2 ON t1.Sno = t2.Sno;

 -- 7) Write SQL Subquery to find records in table1 with pets allowed and a Washer/Dryer, and include details from table2 and table3.
SELECT * FROM rentberry.table2 t1 JOIN rentberry.table3 t2 ON t1.Sno = t2.Sno
WHERE Pets = 'Yes' AND  Dishwasher = 'Yes';