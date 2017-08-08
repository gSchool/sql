### Putting it all together

Using the Dellstore2 database, complete the following queries based on requests from the CEO at your company. 
Items in *italics* are to be included in an aggregate email of all of your responses to the instructor. 

1 => "Get me a list of all of our products with above average sales". 
*Send me the number of items in this list.*
	- SELECT sales from inventory WHERE sales > (SELECT AVG(sales) from inventory);
	- 4305 rows


2 => Based on the first list, *tell me the top 3 selling titles*.
	- SELECT products.title FROM inventory JOIN products ON inventory.prod_id = products.prod_id WHERE sales > (SELECT AVG(sales) from inventory) ORDER BY sales desc LIMIT 3;
	- Academy Anthem, Affair Alamo, Airplane Rollercoaster


3 => Get me a list of how many orders have been placed by Sam Williams.
*How many total orders Have been placed?*
- SELECT * FROM orders JOIN customers ON orders.customerid = customers.customerid WHERE customers.firstname = 'Sam' AND customers.lastname = 'Williams';
- 63 rows

*When was Sam Williams most active ?* 

(When did he place his orders) ?
- SELECT mode() WITHIN GROUP (ORDER BY date_part('year', orders.orderdate)) FROM orders join customers on orders.customerid = customers.customerid where firstname = 'Sam' and lastname = 'Williams';

4 => What are the two cheapest PINOCCHIO movies? (PINOCCHIO is the second part of the title of many of our movies).

*send me the names and prices of the two cheapest PINOCCHIO movies*
- ALABAMA PINOCCHIO, AGENT PINOCCHIO

*send me the PINOCCHIO query so I can re-use it later*
- SELECT * from products WHERE title LIKE '%PINOCCHIO' ORDER BY price asc LIMIT 2;




 5 => Add an auto-incrementing 'id' column to the "reorder" table, then populate that table
with two or three lines of data. Remember that when you add rows to an auto-incrementing table, 
you don't have to include 'id' as one of the columns to populate. It should do it for you. 
In postgres,  SERIAL is the equivalent to auto-increment. 
(Hint: syntax for this is back on Unit01.md) 
- ALTER TABLE reorder ADD COLUMN id serial;
- INSERT into reorder values (41, '2005-05-21', 12, '2005-05-22', 312, '2005-05-23', default);


Question:  if you delete the final record of an auto-incrementing table, and that final record's auto-incremented 
value (id) was 9, what will be the the value of the next record inserted into the table?  In other words, delete 9, 
and what will the next record be? 
10

*send me the answer to this question*

Email all of your answers **IN ONE EMAIL** to complete this assignment. 











