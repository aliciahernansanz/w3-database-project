create table old_HDD2
select od.film_id,od.actor_id,od.category_id
from film as f
inner join old_HDD as od
on f.title = od.title
INNER JOIN actor as a
ON od.full_name = a.full_name;

SELECT * FROM old_HDD2;
ALTER TABLE old_HDD2
RENAME TO old_HDD;
SELECT * FROM old_HDD;

## 1-Top 3 clientes, después de ordenar el numero de peliculas que ha alquilado agrupado por id_cliente

SELECT customer_id, count(f.title) as nº_films
from rental as r
inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on i.film_id = f.film_id
group by customer_id
order by count(f.title) desc limit 3;

## 2- Ranking de Categories con más peliculas 

select c.name as category, count(od.film_id) as nº_of_films
from category as c
inner join old_HDD as od
on c.category_id = od.category_id
group by c.name
order by count(od.film_id) desc;

## 3- Nº de actores en 10 peliculas random  

select f.title, count(od.actor_id) as nº_actors
from film as f
inner join old_HDD as od
on f.film_id = od.film_id
group by f.title
order by rand() limit 10;

## 4- Peliculas de action en las que aparece Elvis Marx

select f.title as film, c.name as category , a.full_name as actor
from category as c
inner join old_HDD as od
on c.category_id = od.category_id
inner join actor as a
on od.actor_id = a.actor_id
inner join inventory as i
on od.film_id = i.film_id
inner join film as f
on i.film_id = f.film_id
where c.name = 'action' and a.full_name = 'ELVIS MARX';

## 5- Ranking of best Horror movies (based on the rental rates)

select distinct f.title as film, c.name as category, f.rental_rate
from film as f
inner join old_HDD as od
on f.film_id = od.film_id
inner join category as c
on od.category_id = c.category_id
where c.name = 'horror' 
order by rental_rate desc;

## 6- Peliculas de Sandra Peck que duren mas de 90min

select f.title as film, a.full_name as actor, f.length
from film as f
inner join old_HDD as od
on f.film_id = od.film_id
inner join actor as a
on od.actor_id = a.actor_id
where a.full_name = 'SANDRA PECK' and f.length > 90;

## 7- Rental rates grouping

SELECT f.rental_rate,
CASE 
 WHEN f.rental_rate > 3.5 THEN 'high_score'
 WHEN f.rental_rate > 2.5 THEN 'medium_score'
 ELSE 'low_score' 
END AS film_score
FROM film as f limit 10;

        
## 8- Nº de peliculas por tienda de Animation y Children

select i.store_id as store, c.name as category, count(f.title) as nº_films
from film as f
inner join old_HDD as od
on f.film_id = od.film_id
inner join category as c
on od.category_id = c.category_id
inner join inventory as i
on f.film_id = i.film_id
where c.name in ('animation','children')
group by i.store_id, c.name ;


## 9- Media de duración de las películas cada categoría

select c.name as category, avg(f.rental_duration) as avg_lenght
from category as c
inner join old_HDD as od
on c.category_id = od.category_id
inner join film as f
on od.film_id = f.film_id
group by c.name
order by count(od.film_id) desc;

## 10- 

select * from old_HDD;




