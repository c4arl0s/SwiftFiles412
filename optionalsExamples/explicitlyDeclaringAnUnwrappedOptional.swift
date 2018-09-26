// You can also create an unwrapped optional as:

let someValue: Int! = 5

print(someValue)

// When you run the program, the output will be: 5 (nope, why?)

// In the above program, Int! creates a unwrapped optional, which automatically unwraps the value while you access it so that you don't need to everytime append the ! character.

// Be certain while you use these kinds of optionals, the variable will always need to have a value when you access it. If you don't, you will get a fatal error crash.

