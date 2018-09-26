struct Rectangule {
var width: Int
var height: Int
var area: Int { // computed propertie
	return width * height
}
}
let rectangule = Rectangule(width: 4, height: 5)
print(rectangule.area)