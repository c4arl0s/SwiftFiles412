// A closure can also return value, as functions. If you need to return value from closure, you must explicitly add the type to return inside braces () which is followed by ->.

let simpleClosure: (String) -> (String) = { parameter in    
    let greeting = "\(parameter) " + "Program"
    return greeting
}

let result = simpleClosure("Hello, World")
print(result)

// In the above program, we have defined type as simpleClosure: (String) -> (String) because Swift cannot automatically infer the closure that returns a value. 

// The type (String) -> (String) states that the closure takes an input of type String and also returns a value of type String.

// The closure also returns a value using the return keyword as return greeting and the returned value can be assigned in a variable/constant as let result = as we have learned in Swift functions.
