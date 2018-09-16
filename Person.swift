#!/usr/bin/swift

struct Person {
    var age: Int
    var residence: Residence?
}
 
struct Residence {
    var address: Address?
}
 
struct Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?
}

if let theResidence = person.residence {
    if let theAddress = theResidence.address {
        if let theApartmentNumber = theAddress.apartmentNumber {
            print("He/she lives in apartment number \(theApartmentNumber).")
        }
    }
}

if let theApartmentNumber = person.residence?.address?.apartmentNumber {
  print("He/she lives in apartment number \(theApartmentNumber).")
}


