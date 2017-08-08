### Putting it all together

Using the Dellstore2 database, complete the following queries based on requests from the CEO at your company.
Items in *italics* are to be included in an aggregate email of all of your responses to the instructor.

1 => "Get me a list of all of our products with above average sales".
*Send me the number of items in this list.*

select products.title, inventory.prod_id from
products join inventory on products.prod_id = inventory.prod_id
where inventory.sales > (select avg(sales) from inventory);
*4305 items in this list*

2 => Based on the first list, *tell me the top 3 selling titles*.
select products.title from
products join inventory on products.prod_id = inventory.prod_id
where inventory.sales > (select avg(sales) from inventory) order by inventory.sales desc limit 3;

*academy anthem, affair alamo, airplane rollercoaster*


3 => Get me a list of how many orders have been placed by Sam Williams.
*How many total orders Have been placed?*
select orders.orderid from orders join customers on orders.customerid = customers.customerid where firstname = 'Sam' and lastname = 'Williams';
*63 orders*

*When was Sam Williams most active ?*
SELECT mode() WITHIN GROUP (ORDER BY date_part('year', orders.orderdate)) FROM orders join customers on orders.customerid = customers.customerid where firstname = 'Sam' and lastname = 'Williams';


(When did he place his orders) ?
*2004*

4 => What are the two cheapest PINOCCHIO movies? (PINOCCHIO is the second part of the title of many of our movies).

*send me the names and prices of the two cheapest PINOCCHIO movies*
ALABAMA PINOCCHIO, AGENT PINOCCHIO
*send me the PINOCCHIO query so I can re-use it later*
select * from products where title like '%PINOCCHIO%' order by price asc limit 2;



 5 => Add an auto-incrementing 'id' column to the "reorder" table, then populate that table
with two or three lines of data. Remember that when you add rows to an auto-incrementing table,
you don't have to include 'id' as one of the columns to populate. It should do it for you.
In postgres,  SERIAL is the equivalent to auto-increment.
(Hint: syntax for this is back on Unit01.md)

alter table reorder add column id serial;
insert into reorder values (1312, '2014-11-23', 1, '2014-11-23', 32, '2014-11-23', default);
insert into reorder values (120912, '2014-11-23', 1, '2014-19-23', 90, '2014-11-24', default);
insert into reorder values (10812, '2010-11-20', 1, '2014-11-23', 302, '2014-11-24', default);


Question:  if you delete the final record of an auto-incrementing table, and that final record's auto-incremented
value (id) was 9, what will be the the value of the next record inserted into the table?  In other words, delete 9,
and what will the next record be?

10
*send me the answer to this question*

Email all of your answers **IN ONE EMAIL** to complete this assignment.
