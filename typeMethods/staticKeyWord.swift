#!/usr/bin/swift

// Swift lets you create properties and methods that belong to a type, rather than to instances of a type.

struct TaylorFan {
    var name: String
    var age: Int
    static var favoriteSong = "Look What You Made Me Do"
}

let fan = TaylorFan(name: "James", age: 25)

print(TaylorFan.favoriteSong)

struct CarlosHobbies {
			static var sport = "football"
			static var lecture = "technology"
}

// method applied to the type CarlosHobbies
print(CarlosHobbies.sport)
print(CarlosHobbies.lecture)

