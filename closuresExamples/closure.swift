// basic sintax

let foo: () -> () = {print("foo")} 					// block of code, print something
var bar = {print("here print bar")}					// block of code, print something
func buz() -> () {print("here print buz")}	// block of code, print something

bar() 								// bar is a block of code.
bar = foo; bar() 			
bar = buz; bar()
