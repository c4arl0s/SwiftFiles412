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

changeOptionalStringToUpperCase()