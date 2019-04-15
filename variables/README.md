``` swift
#!/usr/bin/swifF
// var variableName = <initial value>

var numero = 42
print(numero)

// You can provide a type annotation when you declare a variable, to be clear about the kind of values the variable can store. Here is the syntax 
// var variableName:<data type> = <optional initial value>

var numeroFlotante : Float
numeroFlotantei = 3.1416
print(numeroFlota nte)

```

``` swift
#!/usr/bin/swift

let ten = 10 									
// num is an Int
let pi = 3.14 								
// pi is a Double
let floatPi: Float = 3.14 		
// floatPi is a Float

print(ten)
print(pi)
print(floatPi)
```

``` swift
#!/usr/bin/swift

var varA = "Godzilla"
var varB = 1000.00
print("Value of \(varA) is more than \(varB) millions")

```

``` swift
#!/usr/bin/swift
// Local variables are defined within a function, method, or closure:

func printSomething() {
    let localString = "I'm local!"
    print(localString)
}

func printSomethingAgain() {
     print(localString) // error
}```

``` swift
#!/usr/bin/swift
// ==========================
var num: Int = 10
num = 20 // num now equals 20
print(num)
// ==========================
```

``` swift
#!/usr/bin/swift

// Declare a new variable with var, followed by a name, type, and value: var num: Int = 10
// Variables can have their values changed:

// num = 20 // num now equals 20 Unless they're defined with let:
let num: Int = 10 // num cannot change

// Swift infers the type of variable, so you don't always have to declare variable type:

let ten = 10 // num is an Int
let pi = 3.14 // pi is a Double
let floatPi: Float = 3.14 // floatPi is a Float

print(ten)
print(pi))
print(floatPi)

// Variable names aren't restricted to letters and numbers - they can also contain most other unicode characters, although there are some restrictions

```

``` swift
#!/usr/bin/swift
var x: Int
print(x) // Error: Variable 'x' used before being initialized
```

