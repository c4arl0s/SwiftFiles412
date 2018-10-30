class Vehicle {
    
}
 
class Car: Vehicle {
    
}

var car: Car = Car()
var vehicle: Vehicle = Vehicle()
var anotherVehicle: Vehicle = Car()

// upcasting
vehicle = car as Vehicle
print(car as Vehicle)
