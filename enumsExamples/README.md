``` swift
#!/usr/bin/swift
//self se usa en métodos y propiedades calculadas y hace referencia a la instancia que se está pidiendo para el valor de propiedad.

enum LunchChoice {

    case pasta, burger, soup
    
    var emoji: String {
        switch self {
        case .pasta:
            return "🍝"
        case .burger:
            return "🍔"
        case .soup:
            return "🍲"
        }
    }
}

let myLunch = LunchChoice.pasta
print(myLunch.emoji)
```

``` swift
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
}```

``` swift
#!/usr/bin/swift

enum iOSDeviceType {
    case iPhone
    case iPad
    case iWatch
}

var myDevice = iOSDeviceType.iPhone
var dadsDevice = iOSDeviceType.iPad

print(myDevice)
print(dadsDevice)

// dot syntax
```

``` swift
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
```

``` swift
#!/usr/bin/swift

enum Planet {
	case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Pluto
	
	var distanceFromSunKm: Double {
			switch self {
					case .Mercury:
							return 57900000
					case .Venus: 
							return 108200000
					case .Earth:
							return 149600000
					case .Mars:
							return 227900000
					case .Jupiter:
							return 77830000
					case .Saturn:
							return 1427000000
					case .Uranus:
							return 2871000000
					case .Neptune:
							return 4497100000
					case .Pluto:
							return 5913000000
									}
				}

		var distanceFromSunAU: Double {
				return self.distanceFromSunKm/149700598.80239
				}

		func distanceFromAU (otherPlanet: Planet) -> Double {
				return (self.distanceFromSunAU - otherPlanet.distanceFromSunAU).magnitude
				}
		func distanceFromKm (otherPlanet: Planet) -> Double {
				return (self.distanceFromSunKm - otherPlanet.distanceFromSunKm).magnitude
				}		
		var distanceFromEarthKm: Double {
				return (self.distanceFromSunKm - Planet.Earth.distanceFromSunKm).magnitude
				}
		var distanceFromEarthAU: Double {
				return (self.distanceFromSunAU - Planet.Earth.distanceFromSunAU).magnitude	
				}
 }

// remember to create an instance before apply any method

let mercuryDistanceFromSunKm = Planet.Mercury.distanceFromSunKm
print(mercuryDistanceFromSunKm)

let earthDistanceFromSunAU = Planet.Earth.distanceFromSunAU
print(earthDistanceFromSunAU)

let uranusDistanceFromSunAU = Planet.Uranus.distanceFromSunAU
print(uranusDistanceFromSunAU)

let plutoDistanceFromSunAU = Planet.Pluto.distanceFromSunAU
print(plutoDistanceFromSunAU)

let e = Planet.Mercury.distanceFromSunAU - Planet.Earth.distanceFromSunAU
print(e.magnitude)

//let a = Planet.Earth.printChoice()
//print(a)

let c = Planet.Earth.distanceFromAU(otherPlanet: .Pluto)
print("la distancio entre Earth and .Pluto is: \(c)")

let g = Planet.Earth.distanceFromSunAU
print(g)
let j = Planet.Pluto.distanceFromSunAU
print(j)

let o = Planet.Mercury.distanceFromAU(otherPlanet: .Saturn)
print("la distancia entre Mercury and Saturn is: \(o)")

let r = Planet.Mercury.distanceFromSunAU
print(r)
let i = Planet.Saturn.distanceFromSunAU
print(i)

let distancia = Planet.Earth.distanceFromEarthAU
print(distancia)

let u = Planet.Mars.distanceFromEarthAU
print(u)

let p = Planet.Mars.distanceFromEarthKm
print(p)

// remember to create an instance before apply any method
let planetEarth = Planet.Earth
print(planetEarth.distanceFromAU(otherPlanet: .Mars))
```

``` swift
#!/usr/bin/swift

enum Number {
	case one, two, three
}
var myNumber = Number.one
print(myNumber)
```

``` swift
enum MyMode: String {
  case happy
  case notHappy
func takeAction() {
      switch self {
      case .notHappy:
          print("Go meet someone and talk")
       case .happy:
          print("Enjoy your day and little things around you 😍")
       }
   }
}
MyMode.notHappy.takeAction()
MyMode.happy.takeAction()```

``` swift
#!/usr/bin/swift
// self se usa en métodos y propiedades calculadas y hace referencia a la instancia que se está pidiendo para el valor de propiedad.

enum Suit {
    case spades, hearts, diamonds, clubs
    
    var rank: Int {
        switch self {
        case .spades: return 4
        case .hearts: return 3
        case .diamonds: return 2
        case .clubs: return 1
        }
    }
    
    func beats(_ otherSuit: Suit) -> Bool {
        return self.rank > otherSuit.rank
    }
}

let oneSuit = Suit.spades
oneSuit.beats(oneSuit)
let otherSuit = Suit.clubs
oneSuit.beats(otherSuit)


```

``` swift
#!/usr/bin/swift
// An enum is considered as a structured data type that can be modified without needing to change say a String or Int multiple times within your code, for example, the below shows how easy it would be to change something by accident and forget to change it somewhere else.

let myString = "test"

if myString == "ttest" {
  // Doesn't execute because "ttest" is the value assigned to "myString"
}

// With an enum we can avoid this and never have to worry about changing the same thing more than once.

enum MyEnum: String {
  case Test = "test"
}

let enumValue = MyEnum.Test

if enumValue == MyEnum.Test {
  // Will execute because we can reassign the value of "MyEnum.Test" unless we do so within "MyEnum"
}

```

``` swift
#!/usr/bin/swift

enum Action {
    case jump
    case kick
    case move(distance: Float)  // The "move" case has an associated distance
}

var doingSomething = Action.kick
print(doingSomething)

switch doingSomething {
case .jump: print("jump")
case .kick: print("kick")
case .move(let distance): print("moving \(distance)")
}

```

