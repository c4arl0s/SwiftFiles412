``` swift
#!/usr/bin/swift

func rowTheBoat() {
    print("Rema, rema, rema tu bote")
    print("Alegre por el río")
}

func merrilyDream() {
    print("Rápido, rápido, rápido, rápido")
    print("Rema en el barquito")
}

func breatheBetweenVerses() {
    print("        ~        ")
}

rowTheBoat()
merrilyDream()
breatheBetweenVerses()```

``` swift
#!/usr/bin/swift

func rowTheBoat() {
    print("Rema, rema, rema tu bote")
    print("Alegre por el río")
}

func merrilyDream() {
    print("Rápido, rápido, rápido, rápido")
    print("Rema en el barquito")
}

func verseOne() {
    rowTheBoat()
    merrilyDream()
		verseOne()
}

verseOne()```

``` swift
#!/usr/bin/swift

var resultado: Int
var otroResultado: Int

func power(a: Int, b: Int) -> Int {
    var result = a
     
    for _ in 1..<b {
        result = result * a
    }
     
    return result
}

resultado = power(a: 4, b: 5)
otroResultado = power(a: 3, b: 4)

print(otroResultado)
print(resultado)
```

``` swift
#!/usr/bin/swift#

func greet(nombre: String, apellido: String) {print("Greetings \(nombre) \(apellido)")}
let myName = "Carlos"
let mySurname = "Santiago"

greet(nombre: myName, apellido: mySurname)
```

