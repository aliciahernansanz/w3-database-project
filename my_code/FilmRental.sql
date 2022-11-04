create table old_HDD2
select film_id,actor_id,od.category_id
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
from rental as R
inner join inventory as i
on r.inventory_id = i.inventory_id
inner join film as f
on i.film_id=f.film_id
group by customer_id
order by count(f.title) desc limit 3;

## 2- Ranking de Categories con más peliculas 

select c.name, count(od.film_id)
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

## 4- 




