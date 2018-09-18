// Guard statements can also chain multiple conditions separated by comma (,) as:

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

