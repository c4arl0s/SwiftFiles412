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
    
	var name:String?

	if let temp = name {
		print("Uppercased:\(temp.uppercased())")
	} else {
		print("Name is nil. Cannot process")
		return
    }
	//how to access temp here?? Solution:Use Guard
}

changeOptionalStringToUpperCase()

// Notice above two statements are both valid and does the same job. 
// But using if-let statement you cannot use the unwrapped value outside of if-let statement. 
// But with guard statement you can use the unwrapped value through out the function.


