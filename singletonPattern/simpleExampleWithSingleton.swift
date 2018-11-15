class LocationManager{
    
    static let shared = LocationManager()
    
    init(){}
    
    func requestForLocation() {
        print("Location granted")
    }
    
}

LocationManager.shared.requestForLocation()  
let location = LocationManager()
location.requestForLocation()