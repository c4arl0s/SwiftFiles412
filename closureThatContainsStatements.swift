let simpleClosure = {
    print("Hello, World!")
}
simpleClosure()

// In the above program, you have defined a closure simpleClosure. 
// The type of the simpleClosure is inferred to be of () -> () because it doesn't accept parameter and does not return a value.
// If you want to explicitly defined the type of the closure, you can do so as let simpleClosure: () -> ().
