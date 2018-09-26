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
