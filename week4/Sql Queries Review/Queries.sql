Using the Sales Orders database, complete the queries below. 

USE SalesOrders;

1. Show all the information on our customers.
		a) Query:

 		SELECT * 
        FROM customers;

		b) Columns: 

 		CustomerID, CustFirstName, CustLastName, CustStreetAddress, CustCity, CustState, CustZipCode, CustAreaCode, CustPhoneNumber
		
		c) Expected Row Count: 

		28 Rows
        
2. Show a list of states, in reverse alphabetical order, where our vendors are located, and include the names of the vendor.
		a) Query:

		SELECT VendState, VendName 
        FROM vendors 
        ORDER BY VendName 
        DESC;

		b) Columns: 

		VendState, VendName

		c) Expected Row Count: 

		11 Rows

3. What if we adjusted the retail price of each product by increasing it 7 percent?
		a) Query:

		UPDATE products 
			SET 
				RetailPrice =  RetailPrice * 1.07;
        SELECT RetailPrice, ProductName 
        FROM products;

		b) Columns: 

		RetailPrice, ProductName

		c) Expected Row Count: 

		40 Rows

4. Show a list of orders made by each customer in ascending date order.
		a) Query:

		SELECT OrderNumber, CustomerID, OrderDate
        FROM orders 
        ORDER BY OrderDate 
        ASC;

		b) Columns: 

		OrderNumber, CustomerID, OrderDate

		c) Expected Row Count: 

		944 Rows

5. Give the names of all vendors based in Albany, Anchorage, and Dallas.
		a) Query:

 		SELECT VendName, VendCity 
        FROM vendors 
        WHERE VendCity IN ('Albany', 'Anchorage', 'Dallas');  

		b) Columns: 

		VendName, VendCity

		c) Expected Row Count:

		3 Rows

6. Show an alphabetized list of products with a quantity on hand greater than or equal to 30.
		a) Query:

		SELECT ProductName, QuantityOnHand 
        FROM products 
        WHERE QuantityOnHand >= 30
        ORDER BY ProductName; 

		b) Columns: 

		ProductName, QuantityOnHand 

		c) Expected Row Count: 

		9 Rows

7. What vendors do we work with that don’t have an email address?
		a) Query:

		SELECT VendName, VendEMailAddress 
        FROM vendors 
        WHERE ISNULL(VendEMailAddress)
        ORDER BY VendName;

		b) Columns: 

		VendName, VendEMailAddress

		c) Expected Row Count: 

		9 Rows

8. List employees and the dates their orders shipped sorted by order date.
		a) Query:

		SELECT EmpFirstName, EmpLastName, ShipDate, OrderDate 
        FROM orders
		JOIN employees 
        ON orders.EmployeeID = employees.EmployeeID
		ORDER BY OrderDate 
        ASC;

		b) Columns: 

		EmpFirstName, EmpLastName, ShipDate, OrderDate

		c) Expected Row Count: 

		944 Rows

9. Show the vendors and products they supply to us for products over $75 for vendors in Texas. 
		a) Query:

		SELECT VendName, VendState, ProductName, RetailPrice 
        FROM vendors, products 
        WHERE RetailPrice > 75 
        AND VendState = 'TX'
        ORDER BY ProductName;

		b) Columns: 

		 VendName, VendState, ProductName, RetailPrice 

		c) Expected Row Count: 

		36 Rows


10. Show employees who live in the same city and state as our vendors.
		a) Query:
		
		SELECT EmpFirstName, EmpCity, VendName FROM employees, vendors WHERE EmpCity = ANY (SELECT VendCity FROM vendors);

		b) Columns: 

		EmpFirstName, EmpCity, VendName

		c) Expected Row Count: 

		22 Rows

11. Display customers who have no sales rep (employees) in the same state.
		a) Query:

		SELECT concat(CustFirstName, " ", CustLastName) AS FullName, EmpState, CustState FROM customers, employees WHERE CustState NOT IN (SELECT EmpState FROM employees);

		b) Columns: 

		FullName, EmpState, CustState

		c) Expected Row Count: 

		99 Rows

12. What is the average quoted price of a helmet?
		a) Query:
		b) Columns: 
		c) Expected Row Count: 
		
13. What was the date of the earliest ship date?
		a) Query:

		SELECT MIN(ShipDate) FROM orders;

		b) Columns: 

		MIN(ShipDate)

		c) Expected Row Count: 

		1 Row

14. What is the total amount (in dollars) of orders from the state of Oregon?
		a) Query:

		SELECT SUM(OrderTotal) 
        FROM orders WHERE CustomerId 
        IN (SELECT CustomerId FROM customers WHERE CustState LIKE 'OR');

		b) Columns: 

		SUM(OrderTotla)

		c) Expected Row Count:

		1 Row

15. Show each employee, the employee’s total sales (in dollars), the employee’s total sales item quantity, and the average item sales price ordered by the employee’s average item sales price highest to lowest.
		a) Query:
		b) Columns: 
		c) Expected Row Count: 