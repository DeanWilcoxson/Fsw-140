CREATE DATABASE bob_ross;
USE bob_ross;
SELECT * FROM ELEMENTS;
-- 1. -- SET Operations:
SELECT EPISODE, TITLE FROM elements WHERE title LIKE '%CLIFF%'
UNION
SELECT EPISODE, TITLE FROM elements WHERE title LIKE '%HILLS%'
ORDER BY EPISODE;

-- IN THIS QUERY, we are using the set operator 'union' to unify
-- the two queries that show differant results into the same result grid.

-- 2. -- Subqueries:
SELECT EPISODE, TITLE FROM ELEMENTS WHERE EPISODE IN (
	SELECT EPISODE FROM ELEMENTS WHERE TREES = 1
);

-- IN THIS QUERY, we are selecting episode and title from the elements
-- table and filtering the results to the episodes that have trees in them. 

-- 3. -- Order of operation of queries:
SELECT EPISODE, TITLE FROM ELEMENTS WHERE EPISODE IN (
	SELECT EPISODE FROM ELEMENTS WHERE TREES = 1
);

-- IN THIS QUERY, (same as #2) the first thing that gets ran in the query is the 'FROM' keyword,
-- so it knows which table to access. Then, the second thing that gets ran in 
-- the query is the 'WHERE' keyword because it will filter the results needed to be read. 
-- Finally, the last thing that gets ran in this query is the 'SELECT' keyword which tells 
-- the database which columns to send back. 

-- 4. -- Creating, Altering, and Dropping tables:
   -- A. -- CREATE
		CREATE TABLE SEASON_ONE(EPISODE VARCHAR(25) NOT NULL);
		INSERT INTO SEASON_ONE (EPISODE)
			SELECT EPISODE FROM ELEMENTS WHERE EPISODE LIKE 'S01%'; 
		SELECT * FROM SEASON_ONE;
   -- IN THIS QUERY, we are creating a table called 'SEASON_ONE' and inserting some data from the 'elements' table.
   
   -- B. -- ALTER 
		ALTER TABLE SEASON_ONE ADD COLUMN TITLE VARCHAR(50) not null;
   -- IN THIS QUERY, we are using the alter statement to add a column called title to the table 'season_one'.
   
   -- C. -- DROP 
		DROP TABLE SEASON_ONE;
	-- IN THIS QUERY, we are using the drop statement to remove the table 'season_one'.
           
-- 5. -- Associations:
USE SALESORDERS;
SELECT CONCAT(CUSTFIRSTNAME, " ", CUSTLASTNAME) AS 'Full Name',  SHIPDATE, ORDERDATE FROM CUSTOMERS
JOIN ORDERS ON  ORDERS.CUSTOMERID = CUSTOMERS.CUSTOMERID;
	-- IN THIS QUERY, we are using the join clause to create an association to the orders table through the customer id. 

-- 6. -- Joins and multiple table joins:
SELECT PRODUCTNAME, VENDNAME, WHOLESALEPRICE 
FROM PRODUCT_VENDORS 
INNER JOIN VENDORS 
	ON  VENDORS.VENDORID = PRODUCT_VENDORS.VENDORID 
INNER JOIN PRODUCTS 
	ON PRODUCTS.PRODUCTNUMBER = PRODUCT_VENDORS.PRODUCTNUMBER
GROUP BY PRODUCTNAME ORDER BY PRODUCTNAME;
	-- IN THIS QUERY, we are using multiple join clauses to get a list of products, the vendor for each product and wholesale price of each product. 