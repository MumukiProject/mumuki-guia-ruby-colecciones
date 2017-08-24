_¡Tengo una colección! ¿Y ahora qué...?_ :scream:

Algo fácil que podemos hacer es agregar o quitar un elemento del conjunto:

```ruby
numeros_de_la_suerte = [2, 5, 8]
numeros_de_la_suerte.push 9 # ahora la lista contiene también al 9
numeros_de_la_suerte.delete 8 # ahora la lista no contiene más al 8
```
También podemos saber saber si un elemento está en el conjunto y la cantidad de elementos que tiene: 

```ruby
numeros_de_la_suerte.include? 5 # devuelve true, porque lo contiene`
numeros_de_la_suerte.size # devuelve 3, porque contiene al 2, 5 y 9
```

> ¡Veamos si se entiende! Nuestra biblioteca maneja `puntos`, y necesitamos agregar las siguientes funcionalidades:
> 
> * `adquirir_juego!(unJuego)`: agrega el juego a la biblioteca, y le suma 150 puntos.
> * `borrar_juego!(unJuego)`: quita un juego de la biblioteca, sin perder puntos.
> * `de_gamer?()`: se cumple si la biblioteca tiene más de 1000 puntos y si más de 5 juegos.
> * `juego_recomendable?(unJuego)`: lo es si no está en la biblioteca y es `violento?`
> * `puntos`: nos dice cuantos puntos tiene la biblioteca. Inicialmente son 0. 
