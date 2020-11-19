USE sakila;

select * from actor
where last_name = "CAGE";

select * from actor 
where first_name != "ZERO" || "NICK";

select * from actor
where first_name IN ("NICK", "JOHNNY", "JAMES", "MORGAN", "WHOOPI");

select * from actor
where actor_id IN (50-150);

select * from actor 
where first_name LIKE "C%";

select * from actor
ORDER BY first_name;

select * from actor
ORDER BY last_name DESC;

select COUNT(*) from actor;

select COUNT(DISTINCT first_name) from actor;

select * from film_category
where category_id IN (11);

select category_id as film_genre
from film_category;

#2. More queries 

insert into actor (first_name, last_name) values ("Maja", "Nøhr-Nørgaard");

insert into film_actor (actor_id, film_id) values (201,1);
insert into film_actor (actor_id, film_id) values (201,2);
insert into film_actor (actor_id, film_id) values (201,3);
insert into film_actor (actor_id, film_id) values (201,4);
insert into film_actor (actor_id, film_id) values (201,5);

update actor set first_name='Albert', last_name='Vegas' where actor_id = 201;

delete from actor where actor_id = 201;

#Joins
select * from category
where category_id = 11;

SELECT * FROM film INNER JOIN film_category ON film.film_id = film_category.film_id WHERE film_category.category_id = 11;

#JDBC

