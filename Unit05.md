### Putting it all together

Using the Dellstore2 database, complete the following queries based on requests from the CEO at your company.
Items in *italics* are to be included in an aggregate email of all of your responses to the instructor.

1 => "Get me a list of all of our products with above average sales".

select inventory.sales, products.title
from inventory
join products
on inventory.prod_id = products.prod_id
where inventory.sales > (select avg(inventory.sales) from inventory)
order by inventory.sales desc;

*Send me the number of items in this list.*

4305

2 => Based on the first list, *tell me the top 3 selling titles*.

37	ACADEMY ANTHEM
36	AFFAIR ALAMO
35	AIRPLANE ROLLERCOASTER


3 => Get me a list of how many orders have been placed by Sam Williams.
*How many total orders Have been placed?*
67

select customers.customerid, orders.orderid from customers join orders on customers.customerid = orders.orderid
where customers.lastname = 'Williams' and customers.firstname = 'Sam'


*When was Sam Williams most active ?*
2004-05-25

select customers.customerid, orders.orderid, orders.orderdate from customers join orders on customers.customerid = orders.orderid
where customers.lastname = 'Williams' and customers.firstname = 'Sam'
order by orders.orderdate desc;



(When did he place his orders) ?

4 => What are the two cheapest PINOCCHIO movies? (PINOCCHIO is the second part of the title of many of our movies).

*send me the names and prices of the two cheapest PINOCCHIO movies*
ALABAMA PINOCCHIO	9.99
AGENT PINOCCHIO	9.99
*send me the PINOCCHIO query so I can re-use it later*
select title, price from products
where lower(title) like '%pinocchio'
order by price asc
limit 2;



 5 => Add an auto-incrementing 'id' column to the "reorder" table, then populate that table
with two or three lines of data. Remember that when you add rows to an auto-incrementing table,
you don't have to include 'id' as one of the columns to populate. It should do it for you.
In postgres,  SERIAL is the equivalent to auto-increment.
(Hint: syntax for this is back on Unit01.md)


Question:  if you delete the final record of an auto-incrementing table, and that final record's auto-incremented
value (id) was 9, what will be the the value of the next record inserted into the table?  In other words, delete 9,
and what will the next record be?

*send me the answer to this question*

10  - id=9 is gone forever. 

Email all of your answers **IN ONE EMAIL** to complete this assignment.
