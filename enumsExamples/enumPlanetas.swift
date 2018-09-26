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
