Los bloques también pueden recibir parámetros para su aplicación. Por ejemplo, `sumar_a_otros_dos` recibe dos parámetros, escritos entre barras verticales `|` y separados por comas:

```ruby
un_numero = 3
sumar_a_otros_dos = proc { |un_sumando, otro_sumando| un_numero = un_numero + un_sumando + otro_sumando }
```

Para aplicar el bloque `sumar_a_otros_dos`, se le pasan los parámetros deseados al mensaje `call`:

```ruby
ム sumar_a_otros_dos.call(1,2)
=> 6
```

Volvamos a los videojuegos... 

En la _Biblioteca_ podés ver el objeto `TimbaElLeon`. No nos interesa cómo están implementados los métodos de este objeto, solo queremos recordar los mensajes que entiende ¡por eso hay puntos suspensivos! :sunglasses:

> Asignale a la variable `jugar_a_timba` un bloque que reciba un único parámetro. El bloque recibe una cantidad de minutos y debe hacer que se juegue a `TimbaElLeon` durante ese tiempo, pero recordá que `jugar!` espera una cantidad de horas. 
