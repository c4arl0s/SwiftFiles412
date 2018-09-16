#!/usr/bin/swift

// Properties can be added to a class or struct (technically enums too, see "Computed Properties" example). 
// These add values that associate with instances of classes/structs:

class Perro {
    var nombre = ""
		var edad = 0			// ask question about this
		var color = ""
}

// In the above case, instances of Perro have a property named nombre of type String. The property can be accessed and modified on instances of Perro:

let miPerro = Perro()						// crea un objeto
let miPerroViejo = Perro()			// crea un segundo objeto 

miPerro.nombre = "Manchas"			// le pone nombre al objeto
miPerroViejo.nombre = "Capitan"	// le pone nombre al perro viejo

miPerro.edad = 10
miPerroViejo.edad = 15

miPerro.color = "negro"

print(miPerro.nombre)
print(miPerroViejo.nombre)

print("El nombre de mi perro es: \(miPerro.nombre)")
print("El nombre de mi perro viejo es: \(miPerroViejo.nombre)")

print("la edad de mi perro es: \(miPerro.edad)")
print("la edad de mi perro viejo es: \(miPerroViejo.edad)")

// These types of properties are considered stored properties, as they store something on an object and affect its memory.


