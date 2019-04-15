``` swift
// Additional Syntactic Sugar

struct Track {
	var trackNumber: Int
}

let tracks = [Track(trackNumber: 3), Track(trackNumber:2), Track(trackNumber: 1)]

// you may be wondering why the by argument label was omitted during xcode autocompletion of the closure. If your were being as verbose as possible, the sorted(by:) method would be called like this:

let sortedTracks = tracks.sorted { (firstTrack, secondTrack) -> Bool in
return firstTrack.starRating < secondTrack.starRating
}

// when a closure is the last argument of a function,
// you can move the closing parentheses after the second-to-last argument
// and leave the curly braces at the end.
// when the functions only argument is a closure, the parentheses can be ommited entirely.
// this is called trailling closure syntax.


// for example:

func performRequest(url: String, response: (code: Int) -> Void)
{ }

// the first argument:   url: String
// the second argument 
// is a response closure that 
// contains the data at the specified URL:  response: (Data) -> Void

// here is what it would look like to call the function using trailling closure syntax.
// The closing parentheses is moved to the previous argument,
// the response argument label is dropped,
// and the curly braces hang nicely off the end.

performRequest(url: "https://www.apple.com") { (data} in
	print(data)
}






```

``` swift
#!/usr/bin/swift

```

``` swift
#!/usr/bin/swift

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
print("list of names = \(names)")
var reversedNames = names.sorted(by: backward)
print("list of names, backwards = \(reversedNames)")

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print("list of names, using Closure Expression Syntax = \(reversedNames)")

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print("list of names, using Inferring Type From Context = \(reversedNames)")

reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print("list of names, using Implicit Returns from Single-Expression Closures = \(reversedNames)")

reversedNames = names.sorted(by: { $0 > $1 } )
print("list of names, using closure with shorthand argument = \(reversedNames)")

reversedNames = names.sorted(by: >)
print("list of names, using Operator Methods: \(reversedNames)")

```

``` swift
```

``` swift
// Syntax
// firts review the syntax of a function

func sum(numbers: [Int]) -> Int {
  // Code that adds together the numbers array.
  return total
}

// Now compare that with the syntax of a closure:
// closures can be passed around as values and execute later.

let sumClosure = { (numbers: [Int]) -> Int in
									// code here
									return total
								 }

// now you can then use the closure to perform the action by calling sumClosure

let sum = sumClosure([1,2,3,4])
print(sum)

// Closures typically dont have a name
// they can be stored as a variable
// they can be stored as an argument.
// developers call them: anonymous functions: functions without name.
```

``` swift
// ====================
let simpleClosure = { }
simpleClosure()
// ====================
// simple closure that takes no parameters
// contains no statements
// does not return a value
// we call the closure as simpleClosure()

```

``` swift
// We can also pass closure as a parameter to a function as:

func someSimpleFunction( someClosure: ()->() ) {print("Function Called")}

someSimpleFunction( someClosure: {print("Hello World! from closure")} )

// In the above program, the function accepts a closure of type ()->() i.e takes no input and doesn't return any value.
// Now when calling the function someSimpleFunction(), you can pass the closure { print("Hello World! from closure") } as a parameter.

// The function call triggers the print("Function Called") statement inside the function which outputs Function Called in the screen.
// However, the closure statement is not executed because you have not made the call to the closure.

```

``` swift
// many commonly used collection functions and UIKit take closures as arguments.
// now that you know to create a closure, you can learn about passing a closure into a function.

struct Track {
	var trackNumber: Int
}

let tracks = [Track(trackNumber: 3), Track(trackNumber:2), Track(trackNumber: 1)]

let sortedTracks = tracks.sorted { (firstTrack, secondTrack) -> Bool in
						return firstTrack.trackNumber < secondTrack.trackNumber
}
print(sortedTracks)

// remember when you access the function sorted it shows up like:
// sorted(by: (Track, Track) -> bool) // a closure!
// the compiler can infer that the two parameters within the closure will be of type Track.

```

``` swift
```

``` swift
let printClosure = { () -> void in
		print("this closure does not take any parameters and does not return a value")
}

let printAnotherClosure = { (string: String) -> void in
		// A closure with parameters and no return value
		print(string)
}

let randomNumberClosure = { () -> Int in
		// code that returns a random number
		// A closure with no parameter and a return value
}

let anotherRandomNumberClosure = { (minValue: Int, maxValue: Int) -> int in 
		// Code that returns a random number between minValue and maxValue
}
```

``` swift
func addScore(_ points: Int) -> Int
{
    let score = 42
    let calculate = {
        return score + points
    }
    return calculate()
}
let value = addScore(11)
print(value)

// 
```

``` swift
// Completion blocks: for example, when you have some time consuming task, you want to be notified when that task is finished. You can use closures for that, instead of a delegate (or many other things)

func longAction(completion: () -> ()) {
    for index in veryLargeArray {
        // do something with veryLargeArray, which is extremely time-consuming 
    }
    completion() // notify the caller that the longAction is finished 
}

//Or asynch version

func longAction(completion: () -> ()) {

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {

        for elem in veryLargeArray {
            // do something with veryLargeArray, which is extremely time-consuming
        }
        dispatch_async(dispatch_get_main_queue(), { 
            completion() // notify the caller that the longAction is finished 
        })
    }
}

longAction { print("work done") }```

``` swift
// swift includes some advance functions for itering over collections and performin common actions.

// you will learn about map
// you will learn about filter
// you will learn about reduce
```

``` swift
func makeProducer(x: Int) -> (()->Int) {
									let closure = { x }				// x is capture by the closure
									return closure
}
let three = makeProducer(x: 3)
let four = makeProducer(x: 4)
three()													// it prints 3 in playground
four()													// it prints 4 in playground
print(three())									// it prints 3 in command line
print(four())										// it prints 4 in command line


```

``` swift
// in previous lessons about scope and how any constant or variable thats declared within braces is defined in the local scope and is not accessible by any other scope.
// Closures work somewhat differently.

// Closures are often written using values or functions that are defined in the same scope as the closure, but not within the closure braces.

// considere the following closure that animates the backgroundColor from its current color to red:

animate {
		self.view.backgroundColor: .red
}

// what if the view property was removed from the screen during this animation ?
// Would the code crash since view would no longer be an accesible property ?
// no worries, Swift is smart. Based on the context, a closure can sense, or capture, sorrounding constants and variables. 
// this means that, if the view would typically be deallocated when it is removed from the screen, the animate closure will keep the view in memory until the closure is complete.

// this inteligence enables closures to use those constants and variables safely and to modify them within the closure block. 
// similarly, swift wants to make it clear that the owner of the view property must also be kept in memory until the animation completes, so it requires the self keyword.

```

``` swift
let squares = (1...10).map({ $0 * $0 }) 			
// it prints [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
print(squares)
```

``` swift
let addInts = { (x: Int, y: Int) -> Int in 
								return x + y
}
let result = addInts(1,2)
print(result)

let divideInts = { (x: Int, y: Int) -> Int in
										if y == 0 {
										print("you cannot divied by zero")	
									}
										return x/y
}
let division = divideInts(2,3)
print(division)
let anotherDivision = divideInts(1,0)
print(anotherDivision)

```

``` swift
#!/usr/bin/swift

func someSimpleFunction(someClosure: ()->(), msg: String) { 
			print(msg)
     	someClosure() // remember how is called the closure once you created it
}
someSimpleFunction(someClosure: {print("this is the first argument of the function and it is called later in function")}, msg:"this is the second argument")```

``` swift
#!/usr/bin/swift
// A closure can also return value, as functions. 
// If you need to return value from closure, you must explicitly add the type to return inside braces () which is followed by ->
// =====================================================
let simpleClosure: (String) -> (String) = { parameter in    
    let greeting = "gretting = \(parameter) " + "... adding this inside the closure"
    return greeting
}
let result = simpleClosure("Hello, World")
print(result)

// =====================================================
// In the above program, we have defined type as simpleClosure: (String) -> (String) because Swift cannot automatically infer the closure that returns a value. 
// The type (String) -> (String) states that the closure takes an input of type String and also returns a value of type String.
// The closure also returns a value using the return keyword as return greeting and the returned value can be assigned in a variable/constant as let result = as we have learned in Swift functions.
```

``` swift
// ====================
let simpleClosure = {
print("Hello, World!") 
}
simpleClosure()
// ====================
// The type of the simpleClosure is inferred to be of () -> () because it doesn't accept parameter and does not return a value.```

``` swift
let simpleClosure: (String) -> () = { parameter in
    print(parameter)
}
simpleClosure("Hello, World")

// In the above program, the type of closure (String) -> () states that the closure takes an input of type String but does not return value.
// You can use the value passed inside the statements of the closure by placing a parameter name name followed by in keyword.

// Remember the use of in keyword is to separate the parameter parameter with the statements. 
// Since the closure accepts a String, you need to pass the string while you call the closure as simpleClosure("Hello, World"). 
// This executes statement inside the closure and outputs Hello, World! in the console.```

``` swift
#!/usr/bin/swift
// ===================
let simpleClosure = {   
}
simpleClosure()
// ===================

// In the above syntax, we have declared a simple closure { } that takes no parameters, 
// contains no statements and does not return a value. 
// This closure is assigned to the constant simpleClosure.

// We call the closure as simpleClosure(), but since it doesn't contain any statements, the program does nothing.

```

``` swift
let birthday: (String) -> () = { name in print("Happy birthday, \(name)!") }
birthday("Carlos")


```

``` swift
let sayHi = {print("hello")}
sayHi()
```

``` swift
// basic sintax

let foo: () -> () = {print("foo")} 					// block of code, print something
var bar = {print("here print bar")}					// block of code, print something
func buz() -> () {print("here print buz")}	// block of code, print something

bar() 								// bar is a block of code.
bar = foo; bar() 			
bar = buz; bar()
```

``` swift
func addScore(_ points: Int) -> Int 
		{
			let score = 12
			print(score)
			let calculate = {					// closure
					return score + points
			}
			return calculate()				// returns a function
}
let value = addScore(8)
print(value)```

``` swift
#!/usr/bin/swift
// A closure can capture constants and variables from the surrounding context in which it is defined.

func makeIncrementer(forIncrement amount: Int) -> () -> Int {		// makeIncrementer returns a function
	var runningTotal = 0																					// func incrementer returns an Int
	func incrementer() -> Int {					
			runningTotal += amount
			return runningTotal
	}
	return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()

// the return type of makeIncrementer is () -> Int. It returns a function

```

``` swift
#!/usr/bin/swift

func someSimpleFunction(_ someClosure: @autoclosure ()->(String)) { 
			let res = someClosure()
			print(res) 
}

someSimpleFunction("Good Morning")

// In the above program, we've defined a function that takes no parameter but returns a String ( ()->(String) ). 
// We passed the autoclosure "Good Morning" to the function. This is also the return value of the closure.
// So, when we called someClosure() inside the function, it returned the value Good Morning.```

``` swift
func someSimpleFunction(_ someClosure: @autoclosure (String)->(String)) { 
			let result = someClosure("Hello World")
			print(result)
}
someSimpleFunction("Good Morning")

// we have marked the closure ()->() to be of type autoclosure with @autoclosure attribute.
// you don’t have to add { } around the function parameter as someClosure: (print("Hello World! from closure"))
```

``` swift
#!/usr/bin/swift

func someSimpleFunction(someClosure: @autoclosure ()->(), msg:String) { 
			print(msg)	
			someClosure()
}
someSimpleFunction(someClosure: (print("Hello World! from closure")), msg: "hola")

// we have marked the closure ()->() to be of type autoclosure with @autoclosure attribute. 
// you don’t have to add { } around the function parameter as someClosure: (print("Hello World! from closure"))

```

``` swift
// Additional Syntactic Sugar

struct Track {
	var trackNumber: Int
}

let tracks = [Track(trackNumber: 3), Track(trackNumber:2), Track(trackNumber: 1)]

let sortedTracks = tracks.sorted { (firstTrack, secondTrack) -> Bool in
return firstTrack.starRating < secondTrack.starRating
}

// swift can infer that the closure must return a Bool value.

let sortedTracks = tracks.sorted { (firstTrack, secondTrack) in
	return firstTrack.starRating < secondTrack.starRating
}

// swift knows the function expects two instances

let sortedTracks = tracks.sorted { return $0.starRating < $1.starRating }

// when a closure has one line, swift will automatically return the result, so yo can remove a return keyword.

let anotherSortedTracks = tracks.sorted { $0.starRating < $1.starRating }


```

