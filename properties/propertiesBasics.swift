#!/usr/bin/swift
// Properties can be added to a class or struct (technically enums too, see "Computed Properties" example). 
// These add values that associate with instances of classes/structs:

class Dog {
    var name = ""
		var age = 0			// ask question about this
		var color = ""
}

// In the above case, instances of Perro have a property named nombre of type String. The property can be accessed and modified on instances of Perro:

let myDog = Dog()						// crea un objeto
let myOldDog = Dog()			// crea un segundo objeto 

myDog.name = "Manchas"			// le pone nombre al objeto
myOldDog.name = "Capitan"	// le pone nombre al perro viejo

myDog.age = 10
myOldOdg.age = 15

myDog.color = "negro"

print(myDog.name)
print(myOldDog.name)

print("El nombre de mi perro es: \(miPerro.nombre)")
print("El nombre de mi perro viejo es: \(miPerroViejo.nombre)")

print("la edad de mi perro es: \(miPerro.edad)")
print("la edad de mi perro viejo es: \(miPerroViejo.edad)")

// These types of properties are considered stored properties, as they store something on an object and affect its memory.


