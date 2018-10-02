import Foundation

class LivingBeing {
    var age :Int?
    init(age:Int?) {
        if let age = age { self.age = age }
    }
}

class Human: LivingBeing {
    var name:String?
    init(name:String?, age:Int?) {
        if let name = name { self.name = name }
        super.init(age: age ?? 0)
    }
}

class Animal: LivingBeing {
    var isMammals: Bool? 
    init(isMammals:Bool?, age:Int?) {
        if let isMammals = isMammals { self.isMammals = isMammals }
        super.init(age: age ?? 0)
    }
}

let livingBeingArray = [Animal(isMammals:true, age:12), Human(name:"Abhilash",age:25)]
print(livingBeingArray)
