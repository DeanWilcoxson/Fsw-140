-- Using the Sales Orders database, complete the queries below. 
-- USE SalesOrders;

-- 1. Show all the information on our customers.
-- 		a) Query:
 		-- SELECT * 
        -- FROM customers;
-- 		b) Columns: 
 		-- CustomerID, CustFirstName, CustLastName, CustStreetAddress, CustCity, CustState, CustZipCode, CustAreaCode, CustPhoneNumber
-- 		c) Expected Row Count: 
		-- 28 Rows
        
-- 2. Show a list of states, in reverse alphabetical order, where our vendors are located, and include the names of the vendor.
-- 		a) Query:
		-- SELECT VendState, VendName 
        -- FROM vendors 
        -- ORDER BY VendName 
        -- DESC;
-- 		b) Columns: 
		-- VendState, VendName
-- 		c) Expected Row Count: 
		-- 11 Rows

-- 3. What if we adjusted the retail price of each product by increasing it 7 percent?
-- 		a) Query:
		-- UPDATE products 
			-- SET 
				-- RetailPrice =  RetailPrice * 1.07;
        -- SELECT RetailPrice, ProductName 
        -- FROM products;
-- 		b) Columns: 
		-- RetailPrice, ProductName
-- 		c) Expected Row Count: 
		-- 40 Rows

-- 4. Show a list of orders made by each customer in ascending date order.
-- 		a) Query:
		-- SELECT OrderNumber, CustomerID, OrderDate
        -- FROM orders 
        -- ORDER BY OrderDate 
        -- ASC;
-- 		b) Columns: 
		-- OrderNumber, CustomerID, OrderDate
-- 		c) Expected Row Count: 
		-- 944 Rows

-- 5. Give the names of all vendors based in Albany, Anchorage, and Dallas.
-- 		a) Query:
 		-- SELECT VendName, VendCity 
        -- FROM vendors 
        -- WHERE VendCity IN ('Albany', 'Anchorage', 'Dallas');  
-- 		b) Columns: 
		-- VendName, VendCity
-- 		c) Expected Row Count:
		-- 3 Rows

-- 6. Show an alphabetized list of products with a quantity on hand greater than or equal to 30.
-- 		a) Query:
		-- SELECT ProductName, QuantityOnHand 
        -- FROM products 
        -- WHERE QuantityOnHand >= 30
        -- ORDER BY ProductName; 
-- 		b) Columns: 
		-- ProductName, QuantityOnHand 
-- 		c) Expected Row Count: 
		-- 9 Rows

-- 7. What vendors do we work with that don’t have an email address?
-- 		a) Query:
		-- SELECT VendName, VendEMailAddress 
        -- FROM vendors 
        -- WHERE ISNULL(VendEMailAddress)
        -- ORDER BY VendName;
-- 		b) Columns: 
		-- VendName, VendEMailAddress
-- 		c) Expected Row Count: 
		-- 9 Rows

-- 8. List employees and the dates their orders shipped sorted by order date.
-- 		a) Query:
-- 		b) Columns: 
-- 		c) Expected Row Count: 
-- 		d) Screenshot:

-- 9. Show the vendors and products they supply to us for products over $75 for vendors in Texas. 
-- 		a) Query:
-- 		b) Columns: 
-- 		c) Expected Row Count: 
-- 		d) Screenshot:


-- 10. Show employees who live in the same city and state as our vendors.
-- 		a) Query:
-- 		b) Columns: 
-- 		c) Expected Row Count: 
-- 		d) Screenshot:

-- 11. Display customers who have no sales rep (employees) in the same state.
-- 		a) Query:
-- 		b) Columns: 
-- 		c) Expected Row Count: 
-- 		d) Screenshot:

-- 12. What is the average quoted price of a helmet?
-- 		a) Query:
-- 		b) Columns: 
-- 		c) Expected Row Count: 
-- 		d) Screenshot:

-- 13. What was the date of the earliest ship date?
-- 		a) Query:
-- 		b) Columns: 
-- 		c) Expected Row Count: 
-- 		d) Screenshot:

-- 14. What is the total amount (in dollars) of orders from the state of Oregon?
-- 		a) Query:
-- 		b) Columns: 
-- 		c) Expected Row Count: 
-- 		d) Screenshot:

-- 15. Show each employee, the employee’s total sales (in dollars), the employee’s total sales item quantity, and the average item sales price ordered by the employee’s average item sales price highest to lowest.
-- 		a) Query:
-- 		b) Columns: 
-- 		c) Expected Row Count: 
-- 		d) Screenshot: