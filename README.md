# w3-database-project


Primero subimos todos los archivos a jupyter notebook, y exploramos y limpiamos los datos con python y pandas.

La limpieza general ha consisitido en eliminar la columna las update ya que no aportaba ningun valor y estaba en la mayoria de archivos. 
Explorando el dato verificamos que las tablas provienen de unas tablas más extensas por lo que a veces no coincide la informacion entre tablas. 
En la tabla de Actors y de Old HDD, concateno las columnas First y Last Name en una para tener el full name.

Una vez estudiadas y limpias las tablas las exportamos a SQL.

En SQL establecemos las relaciones netre las tablas, definimos las primary keys y las foreign keys.






![Image text](https://user-images.githubusercontent.com/aliciahernansanz/w3-database-projec/master/img/Relaciones.png)


Al ver que 'actor_id' no es se puede relacionar con ninguna solo a través de 'full_name', realizamos un join para poder crear el 'actor_id' en la tabla old HDD gracias a la columna concatenada anteriormente 'full_name'. Mediante la creacion de una nueva tabla y sustituir la antigua.
Una vez arregladas y claras las conexiones 