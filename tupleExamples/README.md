``` swift
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
print(film.2)```

``` swift
#!/usr/bin/swift

let tuple = ("one", 2, "three")

// Values are read using index numbers starting at zero

print(tuple.0) // one
print(tuple.1) // 2
print(tuple.2) // three
```

``` swift
#!/usr/bin/swift

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
productBarcode = .upc(10,20,30,40)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}
```

