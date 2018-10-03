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

