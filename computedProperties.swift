#!/usr/bin/swift

// Different from stored properties, computed properties are built with a getter and a setter, performing necessary code when accessed and set. Computed properties must define a type:

var pi = 3.14

class Circulo {
    var radio = 0.0
    var circunferencia: Double {
        											get {return pi * radio * 2}
															set {radio = nuevoValor / pi / 2}
															} 
}

let circulo = Circulo()				// crea un objeto
circulo.radius = 1						// set igual 1 el radio
print(circulo.circunferencia) // Prints "6.28"		
circulo.circunferencia = 14		// si le asigno un valor a la circunferencia, la clase calcula el valor del radio, con set: WOOOOOOOOOOW!!!!
print(circulo.radio) // Prints "2.229..."
