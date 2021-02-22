Hasta ahora solo vimos un tipo de colección: las listas.

Otro tipo muy común de colecciones son los _sets_, los cuales tienen sus diferencias con las listas:

* no admiten elementos repetidos;
* sus elementos no tienen un orden determinado. 

```ruby
ム numeros_aleatorios = [1,27,8,7,8,27,87,1]
ム numeros_aleatorios
=> [1,27,8,7,8,27,87,1]
ム numeros_aleatorios.to_set
=> #<Set: {1, 27, 8, 7, 87}>
```

> ¿Cuáles de los siguientes mensajes puedo enviarle a un set?