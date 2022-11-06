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

###  

![Image text]

###  

![Image text]

###  

![Image text]

###  
