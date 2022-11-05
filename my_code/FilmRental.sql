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

SELECT customer_id, count(f.title)
from rental as r
inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on i.film_id=f.film_id
group by customer_id
order by count(f.title) desc limit 3;

## 2- Ranking de Categories con más peliculas 

select c.name as category, count(od.film_id) as nº_of_films
from category as c
inner join old_HDD as od
on c.category_id = od.category_id
group by c.name
order by count(od.film_id) desc;

## 3- Número de actores por pelicula

select f.title, count(od.actor_id)
from film as f
inner join old_HDD as od
on f.film_id = od.film_id
group by f.title
order by count(od.actor_id) desc;

## 4- Movies of action where Elvis Marx is on

select f.title, c.name , a.full_name
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

select f.title, c.name , f.rental_rate
from category as c
inner join old_HDD as od
on c.category_id = od.category_id
inner join inventory as i
on od.film_id = i.film_id
inner join film as f
on i.film_id = f.film_id
where c.name = 'horror'
order by f.rental_rate desc;

## 6- Peliculas de Sandra Peck que duren mas de 90min

select f.title, a.full_name, f.length
from film as f
inner join old_HDD as od
on f.film_id = od.film_id
inner join actor as a
on od.actor_id = a.actor_id
where a.full_name = 'SANDRA PECK' and f.length > 90;

## 7- 

SELECT f.length,
	CASE WHEN f.length > 100 THEN 'LONG FILM'
		ELSE 'SHORT FILM' END
        AS movie_duration
        from film as f;






