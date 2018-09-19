let simpleClosure: (String) -> () = { name in
    print(name)
}
simpleClosure("Hello, World")

// In the above program, the type of closure (String) -> () states that the closure takes an input of type String but does not return value.
// You can use the value passed inside the statements of the closure by placing a parameter name name followed by in keyword.

// Remember the use of in keyword is to separate the parameter name with the statements. 
// Since the closure accepts a String, you need to pass the string while you call the closure as simpleClosure("Hello, World"). 
// This executes statement inside the closure and outputs Hello, World! in the console.