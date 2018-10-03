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


