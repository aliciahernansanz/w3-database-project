# w3-database-project


Primero subimos todos los archivos a jupyter notebook, y exploramos y limpiamos los datos con python y pandas.

La limpieza general ha consisitido en eliminar la columna las update ya que no aportaba ningun valor y estaba en la mayoria de archivos. 
Explorando el dato verificamos que las tablas provienen de unas tablas más extensas por lo que a veces no coincide la informacion entre tablas. 
En la tabla de Actors y de Old HDD, concateno las columnas First y Last Name en una para tener el full name.

Una vez estudiadas y limpias las tablas las exportamos a SQL.

En SQL establecemos las relaciones netre las tablas, definimos las primary keys y las foreign keys.



![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/Relaciones.png)


Al ver que 'actor_id' no es se puede relacionar con ninguna solo a través de 'full_name', realizamos un join para poder crear el 'actor_id' en la tabla old HDD gracias a la columna concatenada anteriormente 'full_name'. Mediante la creacion de una nueva tabla y sustituir la antigua.

Una vez arregladas y claras las conexiones lanzamos queries para comprobar que la conexion entre tablas funciona correctamente.


### 1-Top 3 clientes, después de ordenar el numero de peliculas que ha alquilado agrupado por id_cliente


![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/Top%203%20clientes.png)

### 2- Ranking de Categories con más peliculas 


![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/Ranking%20de%20Categories%20con%20más%20pelicula.png)

### 3- Nº de actores en 10 peliculas random 

![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/Nº%20de%20actores%20en%2010%20peliculas%20random%20.png)


###  4- Peliculas de action en las que aparece Elvis Marx

![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/Pelis%20de%20accion%20en%20las%20que%20aparece%20E.png)

###  5- Ranking of best Horror movies (based on the rental rates)

![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/Ranking%20peliculas%20de%20horror.png)

###  6- Peliculas de Sandra Peck que duren mas de 90min

![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/accion%20sandra%20mas%20de%2090min.png)

###  7- Rental rates grouping

![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/Rental_rates_grouping.png)

###  8- Nº de peliculas por tienda de Animation y Children

![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/Nº%20de%20peliculas%20por%20tienda%20de%20Animation%20y%20Children.png)

###  9- Media de duracion por categoria

![Image text](https://github.com/aliciahernansanz/w3-database-project/blob/main/img/media%20duracion%20por%20categoria.png)

