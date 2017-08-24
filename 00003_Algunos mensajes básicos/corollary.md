Hay una diferencia notable entre los primeros 2 mensajes (`push` y `delete`) y los otros 2 (`include?` y `size`): 

1. los primeros, al ser evaluados, _modifican_ la lista. Dicho de otra forma, producen un _**efecto**_ sobre la lista en sí (agregan o quitan un elemento del conjunto)
2. los otros dos sólo nos retornan información sobre mi conjunto. Son métodos **sin efecto**. 

Y por si lo estás pensando, sí, `push` y `delete` tienen efecto, pero no terminan en `!`. Es una inconsistencia de Ruby :pensive:.