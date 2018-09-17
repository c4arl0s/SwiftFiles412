enum Grade {
	case A(Int)
	case B(Int)
	case C(String)
}

var mathGrade = Grade.A(92)
var physicsGrade = Grade.C("not bad")

switch physicsGrade {
		case .A(let points):
				print("I got \(points) from 100 points")
		case .B:
				print("very good")
		case .C(let myDescription):
				print("my grade was \(myDescription)")
}