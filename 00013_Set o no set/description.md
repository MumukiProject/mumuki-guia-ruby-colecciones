Hasta ahora sólo vimos un tipo de colección: las listas. ¡Pero hay más! :raised_hands:

Otro tipo muy común de colecciones son los _sets_, los cuales tienen algunas diferencias con las listas:

* no admiten elementos repetidos;
* sus elementos no tienen un orden determinado.

Vamos a ver un ejemplo transforma una lista en un set utilizando `to_set`:

```ruby
ム numeros_aleatorios = [1,27,8,7,8,27,87,1]
ム numeros_aleatorios
=> [1,27,8,7,8,27,87,1]
ム numeros_aleatorios.to_set
=> #<Set: {1, 27, 8, 7, 87}>
```

> ¿Cuáles de los siguientes mensajes creés que podremos enviarle a un set? :thinking: