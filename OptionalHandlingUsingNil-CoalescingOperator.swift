// In Swift, you can also use nil-coalescing operator to check whether a optional contains a value or not. 
// It is defined as (a ?? b). 
// It unwraps an optional a and returns it if it contains a value, or returns a default value b if a is nil.

var someValue: Int?
let defaultValue = 5
let unwrappedValue: Int = someValue ?? defaultValue // check if someValue has a value, if not, asign the defaultValue = 5
print(unwrappedValue)

// another example, now the value of oneValue is 10

var oneSomeValue: Int? = 10
let oneDefaultValue = 5
let oneUnwrappedValue: Int = oneSomeValue ?? oneDefaultValue
print(oneUnwrappedValue)

// However, in the above program, optional variable oneSomeValue is initialized with value 10. 
// So, the nil coalescing operator successfully unwraps the value from oneSomeValue. 
// Therefore, the statement someValue ?? defaultValue returns 10 and the statement print(oneUnwrappedValue) outputs 10 in the console.

