## QUERY PRACTICE (work with a partner)

Instructions:
For each written part of this assignment, write the query underneath the line

When finished, submit a pull request.

* create a new database and name is it zoo
createdb zoo

* import zoo.sql into that new database
psql zoo < zoo.sql

* using sql, write a query that selects all animals
select * from animals;

* select and display just the name of every animal  
select name from animals;

* write a query that updates the name of "Smokey" to "Smokey the Bear"
update animals set name = 'Smokey the Bear' where id = 3;

* write a query that updates the name of "Fozzie" to "Fozzie the Bear"
update animals set name = 'Fozzie the Bear' where name = 'Fozzy';

* insert a new animal named Marlin with a species id that correspond to "fish".
insert into animals values (12, 'Marlin', 4);


USE JOINS TO ACHIEVE THE FOLLOWING :

* write a query that outputs all animals and their species name
select animals.name, species.name from animals join species on animals.species_id = species.id;

* write a query that outputs all of the fish ( must use a join )
select * from animals join species on animals.species_id = species.id and species.name = 'fish';

* write a query that outputs all of the lions
select * from animals join species on animals.species_id = species.id and species.name = 'lion';

* write a query that outputs all of the animals that are a mouse or a bear (you may need to think and discuss how to do this)
select * from animals join species on animals.species_id = species.id where species.name = 'mouse' or species.name = 'bear';


USE AN AGGREGATE QUERIES TO ACHIEVE THE FOLLOWING:

* write a query tells us the average trainer level of all of the trainers
select avg(trainer_level) from trainers;

* write a query that tells us the name of the trainer with the highest level
select * from trainers where trainer_level = (select max(trainer_level) from trainers);


CONSTRUCT THE FOLLOWING:

* build a new table called "days of the week ", numbered 0 - 6 from Sunday to Saturday
create table daysOfTheWeek (id integer, day text);
insert into daysoftheweek values(0, 'Sunday');
Do line 58 for the rest of the days

* write a query telling us all of the animals who have appointments on Sunday and who they're training with. This will require you using a join table.  Research join tables.  Is there a join table in the zoo table? which one is it, and how do you use it ?
select trainers.trainer_name, animals.name, daysoftheweek.day from trainers join appointments on trainers.id = appointments.trainer_id join animals on appointments.animal_id = animals.id join daysoftheweek on appointments.day_of_week = daysoftheweek.id where appointments.day_of_week = 0;
