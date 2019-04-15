``` swift
// Guard provide a way to quickly exit when checking for the optional string and make our code much more cleaner hence there wont be need for if else statement.

struct Person {
  var firstname: String 
	var middlename: String? 
	var lastname: String
  
  func fullName() -> () {
    
     guard let middlename = middlename else {
				print("Your fullname is \(firstname) \(lastname)")  
       	return
     }
     print("Your fullname is \(firstname) \(middlename) \(lastname)")
    
  }
}

let anotherPerson = Person(firstname: "Carlos", middlename: nil, lastname: "Santiago")

anotherPerson.fullName() //This will not throw an error```

``` swift
func changeOptionalStringToUpperCase() {
    
	var name: String?
	if let temp = name {
		print("Uppercased:\(temp.uppercased())")
	} else {
		print("Name is nil. Cannot process")
		return
    }
	//how to access temp here?? Solution:Use Guard
}

changeOptionalStringToUpperCase()```

``` swift
func changeOptionalStringToUpperCase() {

	var name: String?

	guard let temp = name else {						
		print("Name is nil. Cannot process")
		return
	}
	print("Uppercased:\(temp.uppercased())")
}

changeOptionalStringToUpperCase()

// In the above program, you can see the unwrapped value temp is being used outside of the scope defined by guard statement. 
// Since, name is defined optional and contains nil value, the guard statement fails to unwrap the value.


// So, the statements inside guard else executes which prints Name is nil. Cannot process in the output and terminates the function with return statement.
// The equivalent code of the above guard statement if-else statement is:

func changeOptionalStringToUpperCase() {
    
	var name: String?

	if let temp = name {
		print("Uppercased:\(temp.uppercased())")
	} else {
		print("Name is nil. Cannot process")
		return
    }
	//how to access temp here?? Solution:  Use Guard
}

changeOptionalStringToUpperCase()

// Notice above two statements are both valid and does the same job. 
// But using if-let statement you cannot use the unwrapped value outside of if-let statement. 
// But with guard statement you can use the unwrapped value through out the function.

```

``` swift
// Guard statements can also chain multiple conditions separated by comma (,) as:
#!/usr/bin/swift

func changeOptionalStringToUpperCase() {

	var name: String? = "hola"

	guard let temp = name , temp.count > 0  else {
		print("Name is nil or an empty string. Cannot process")
		return
	}
	print("Uppercased:\(temp.uppercased())")
}

changeOptionalStringToUpperCase()

// In the above program ,the guard statement contains two conditions separated by comma.
// The first condition let temp = name unwraps an optional which returns true in our case.
// The second condition temp.count > 0 checks if the unwrapped string has more than 0 characters which evaluates to false in our example.

```

``` swift
func someFunction() {

	guard false else {
		print("Condition not met")
		return
	}
	print("Condition met")
}

someFunction()
print("Hello after function call")```

``` swift

guard false else {
	print("Condition not met")
}
print("Condition met")```

