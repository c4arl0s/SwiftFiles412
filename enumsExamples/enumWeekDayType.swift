#!/usr/bin/swift

enum Day {
  case Sunday
  case Monday
  case Tuesday
  case Wednessday
  case Thursday
  case Friday
  case Saturday

	var dayType: String {
	switch self {
			case .Sunday, .Saturday: 
					return "Weekend"
			case .Monday, .Tuesday, .Wednessday, .Thursday, .Friday: 
					return "weekday"
		}
	}
}

let dayType1 = Day.Sunday.dayType
print(dayType1)
let dayType2 = Day.Friday.dayType
print(dayType2) 
