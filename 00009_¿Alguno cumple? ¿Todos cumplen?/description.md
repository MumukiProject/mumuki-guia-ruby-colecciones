Para saber si **todos** los elementos de una colección cumplen un cierto criterio podemos usar el mensaje `all?`, que también recibe un bloque. Por ejemplo, si tenemos una colección de alumnos, podemos saber si todos aprobaron :smile: de la siguiente forma:

```ruby
alumnos.all? { |un_alumno| unAlumno.aprobo? }
```

De manera muy similar podemos saber si **alguno** de la colección cumple cierta condición mediante el mensaje `any?`. Siguiendo el ejemplo anterior, ahora queremos saber si por lo menos uno de nuestros alumnos aprobó :unamused: :

```ruby
alumnos.any? { |un_alumno| unAlumno.aprobo? }
```

> Declará los métodos en nuestra `Biblioteca`:
>
> * `mucha_violencia?`: si todos los juegos que posee son violentos.
> * `muy_dificil?`: si alguno de los juegos tiene más de 25 puntos de dificultad