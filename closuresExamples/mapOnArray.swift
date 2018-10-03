let arrayOfInt = [2,3,4,5,4,7,2]
var newArray: [Int] = []
for value in arrayOfInt { newArray.append(value*10) }
print(newArray)

let newArrayUsingMap = arrayOfInt.map { $0 * 10 }
print(newArrayUsingMap)

