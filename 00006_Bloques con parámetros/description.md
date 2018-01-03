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

> Volvamos a los videojuegos... declará la variable `jugar_a_timba` y asignale un bloque que reciba un único parámetro. El bloque debe hacer que se juegue a `TimbaElLeon` durante ese tiempo. ¡Podés ver el objeto `TimbaElLeon` en la solapa Biblioteca (no confundir con nuestro objeto `Biblioteca` :stuck_out_tongue_winking_eye:)!