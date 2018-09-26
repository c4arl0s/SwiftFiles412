// We can also pass closure as a parameter to a function as:

func someSimpleFunction( someClosure: ()->() ) {print("Function Called")}

someSimpleFunction( someClosure: {print("Hello World! from closure")} )

// In the above program, the function accepts a closure of type ()->() i.e takes no input and doesn't return any value.
// Now when calling the function someSimpleFunction(), you can pass the closure { print("Hello World! from closure") } as a parameter.

// The function call triggers the print("Function Called") statement inside the function which outputs Function Called in the screen.
// However, the closure statement is not executed because you have not made the call to the closure.

