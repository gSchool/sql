## QUERY PRACTICE (work with a partner)

Instructions:
For each written part of this assignment, write the query underneath the line

When finished, submit a pull request.

* create a new database and name is it zoo
- createdb zoo
* import zoo.sql into that new database
- psql zoo < zoo.sql
* using sql, write a query that selects all animals
- SELECT * FROM animals;
* select and display just the name of every animal
- SELECT animals.name FROM animals;   
* write a query that updates the name of "Smokey" to "Smokey the Bear"
- UPDATE animals SET name = 'Smokey the Bear' WHERE animals.name = 'Smokey';
* write a query that updates the name of "Fozzie" to "Fozzie the Bear"
- UPDATE animals SET name = 'Fozzie the Bear' WHERE animals.name = 'Fozzy';
* insert a new animal named Marlin with a species id that correspond to "fish".
- INSERT INTO animals(name, species_id) VALUES ('Marlin', '4');

USE JOINS TO ACHIEVE THE FOLLOWING :

* write a query that outputs all animals and their species name
- SELECT * FROM species join animals on (animals.species_id = species.id);
* write a query that outputs all of the fish ( must use a join )
- SELECT animals.name FROM species join animals on (animals.species_id = species.id) WHERE species.name LIKE 'fish';
* write a query that outputs all of the lions
* write a query that outputs all of the animals that are a mouse or a bear (you may need to think and discuss how to do this)

USE AN AGGREGATE QUERIES TO ACHIEVE THE FOLLOWING:

* write a query tells us the average trainer level of all of the trainers

* write a query that tells us the name of the trainer with the highest level

CONSTRUCT THE FOLLOWING:

* build a new table called "days of the week ", numbered 0 - 6 from Sunday to Saturday
* write a query telling us all of the animals who have appointments on Sunday and who they're training with. This will require you using a join table.  Research join tables.  Is there a join table in the zoo table? which one is it, and how do you use it ?
