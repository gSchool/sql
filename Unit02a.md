## QUERY PRACTICE (work with a partner)

Instructions:
For each written part of this assignment, write the query underneath the line

When finished, submit a pull request. 

* create a new database and name is it zoo
	createdb zoo
* import zoo.sql into that new database
	psql zoo < zoo.sql
* using sql, write a query that selects all animals
	SELECT * FROM animals;
* select and display just the name of every animal   
	SELECT animals.name FROM animals;
* write a query that updates the name of "Smokey" to "Smokey the Bear"
	UPDATE animals SET name = 'Smokey the Bear' WHERE name = 'Smokey';
* write a query that updates the name of "Fozzie" to "Fozzie the Bear"
	UPDATE animals SET name = 'Fozzy the Bear' WHERE name = 'Fozzy';
* insert a new animal named Marlin with a species id that correspond to "fish".
	INSERT into animals values (default, 'Marlin', 4);


USE JOINS TO ACHIEVE THE FOLLOWING :

* write a query that outputs all animals and their species name
	SELECT animals.name, species.name FROM animals join species on species.id = animals.species_id;
* write a query that outputs all of the fish ( must use a join )
	SELECT animals.name, species.name FROM animals join species on species.id = animals.species_id WHERE species.name = 'fish';
* write a query that outputs all of the lions
	SELECT animals.name, species.name FROM animals join species on species.id = animals.species_id WHERE species.name = 'lion';
* write a query that outputs all of the animals that are a mouse or a bear (you may need to think and discuss how to do this)
	SELECT animals.name, species.name FROM animals join species on species.id = animals.species_id WHERE species.name = 'mouse' OR species.name = 'bear';

USE AN AGGREGATE QUERIES TO ACHIEVE THE FOLLOWING:

* write a query tells us the average trainer level of all of the trainers
	SELECT AVG(trainer_level) FROM trainers;
* write a query that tells us the name of the trainer with the highest level
	SELECT trainer_name, trainer_level FROM trainers WHERE trainer_level = (SELECT MAX(trainer_level) FROM trainers);

CONSTRUCT THE FOLLOWING:

* build a new table called "days of the week ", numbered 0 - 6 from Sunday to Saturday
	CREATE TABLE days_of_the_week (
		id integer,
		day varchar
	);
* write a query telling us all of the animals who have appointments on Sunday and who they're training with. This will require you using a join table.  Research join tables.  Is there a join table in the zoo table? which one is it, and how do you use it ?
	SELECT trainers.trainer_name, animals.name FROM appointments JOIN trainers ON appointments.trainer_id = trainers.id JOIN animals ON appointments.animal_id = animals.id WHERE day_of_week = (SELECT id FROM days_of_the_week WHERE day = 'Sunday');
