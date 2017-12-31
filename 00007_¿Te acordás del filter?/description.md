¿Qué pasa cuando queremos todos aquellos objetos que cumplan con una condición determinada en una cierta colección? Por ejemplo, en una lista de números, aquellos que sean mayores a 3.

Lo que usamos es el mensaje `filter` de las colecciones. `filter` recibe un _bloque_ con un parámetro que representa un elemento de la colección y una condición booleana como código, y lo que devuelve es una nueva colección con los elementos que la cumplen.

Para el ejemplo dado anteriormente sería:

```
var algunosNumeros = [1, 2, 3, 4, 5]
var mayoresA3 = algunosNumeros.filter({unNumero => unNumero > 3})
```
¿Cuándo se aplica ese bloque que recibe el filter? ¡Cuando el filter decida que hay que hacerlo! La colección va a aplicarlo con cada uno de sus elementos por parámetro cuando corresponda durante el filtrado.

> _Mientras tanto en nuestra biblioteca de videojuegos..._
>
>  Queremos agregar el método  `juegosViolentos()` que retorna aquellos juegos que lo sean.
>
> Recordá que un juego debería entender esViolento() y tiempoRestante()