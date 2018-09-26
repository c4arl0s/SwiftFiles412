let someValue: Int? = 5

print(someValue)		// it will print: Optional(5)
print(someValue!)		// it will print: 5 // Unwrapping the value of someValue.

// However, remember, this kind of unwrapping mechanism should only be used when you are certain that the optional will sure have a value when you access it.
