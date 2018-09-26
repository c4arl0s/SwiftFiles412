#!/usr/bin/swift

// Vamos a suponer que queremos almacenar bajo un mismo tipo el nombre de una película y su año de estreno. 
// Usando la inferencia de datos podríamos hacerlo de una manera tan sencilla como esta:

var film = ("Interstellar", 2014, "Mathwe")

// Pone (.0 "Interstellar", .1 2,014). 
// ¿Qué significa esto? 
// Pues que no solo ha creado nuestra variable film como una tupla con valores múltiples, 
// sino que les ha asignado un índice a cada uno de manera automática: 0 y 1. 
// Vamos a evaluar entonces film de la siguiente manera, accediendo a estos índices como si fueran métodos de la variable:

print(film)
print(film.0)
print(film.1)
print(film.2)