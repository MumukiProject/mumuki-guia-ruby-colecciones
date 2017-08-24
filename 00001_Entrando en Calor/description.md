¡Modelemos una biblioteca de videojuegos! :video_game: Para empezar, vamos a crear 3 videojuegos, de los que sabemos lo siguiente:

* :gun: `carlos_duty`: es violento. Además, su tiempo restante de juego es `30 - cantidad_logros * 0.5`. Y si se lo juega por más de 2 horas seguidas, se le suma un logro a su cantidad.
* :tiger: `timbaElLeon`: no es violento. El tiempo restante de juego se disminuye a medida que se juega (en el tiempo jugado); antes de empezar a jugar este es 50 horas.
* :syringe: `devil_may_laugh_vi` : es violento si `nivel_sangre` es mayor a 5. Si bien este nivel arranca en 3, cada vez que se lo juega, sin importar por cuanto tiempo, se incrementa. Ah, y el tiempo restante siempre es 100.

> Declará estos tres objetos, de forma que entiendan los mensaje, `tiempo_restante`, `violento?` y `jugar!`. 