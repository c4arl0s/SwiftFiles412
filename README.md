``` swift
let url = URL(string: "https://www.apple.com")!
```

``` swift
struct GroceryProduct: Codable {
    var name: String
    var points: Int
    var description: String?
}

let json = """
{
    "name": "Durian",
    "points": 600,
    "description": "A fruit with a distinctive scent."
}
""".data(using: .utf8)!

let decoder = JSONDecoder()
let product = try decoder.decode(GroceryProduct.self, from: json)

print(product.name) // Prints "Durian"```

``` swift
import Foundation

let urlstring = "http://www.hotpaw.com/rhn/hotpaw/"
var shouldKeepRunning = true
var sum = 0

class Delegate : NSObject, URLSessionDataDelegate
{
    func urlSession(_ session: URLSession, 
                dataTask: URLSessionDataTask, 
                didReceive data: Data)
    {
        let s = String(data: data, encoding: .utf8 ) ?? ""
        let n = s.characters.count
        sum += n
        print("got data \(n), total =  \(sum) ");
    }

    func urlSession(_ session: URLSession, 
                task: URLSessionTask,
                didCompleteWithError error: Error?) {
                if (error != nil) {
                  print(
                    "Download error: \(error!.localizedDescription)")
                }
                DispatchQueue.main.async { 
                    shouldKeepRunning = false
                    print("url completion handler called")
                }
    }
}

    let config  = URLSessionConfiguration.default
    let session = URLSession(configuration: config, 
                delegate: Delegate(), 
                delegateQueue: nil )

    guard let url = URL( string: urlstring ) else { 
                fatalError("Could not create URL object") 
    }

    print("start")
    
    session.dataTask( with: url ).resume()    

    let runLoop = RunLoop.current
    while (   shouldKeepRunning 
           && runLoop.run(mode:   .defaultRunLoopMode, 
                          before: .distantFuture ) ) {
    }

    print("end")

// eoimport Foundation

let urlstring = "http://www.hotpaw.com/rhn/hotpaw/"
var shouldKeepRunning = true
var sum = 0

class Delegate : NSObject, URLSessionDataDelegate
{
    func urlSession(_ session: URLSession, 
                dataTask: URLSessionDataTask, 
                didReceive data: Data)
    {
        let s = String(data: data, encoding: .utf8 ) ?? ""
        let n = s.characters.count
        sum += n
        print("got data \(n), total =  \(sum) ");
    }

    func urlSession(_ session: URLSession, 
                task: URLSessionTask,
                didCompleteWithError error: Error?) {
                if (error != nil) {
                  print(
                    "Download error: \(error!.localizedDescription)")
                }
                DispatchQueue.main.async { 
                    shouldKeepRunning = false
                    print("url completion handler called")
                }
    }
}

    let config  = URLSessionConfiguration.default
    let session = URLSession(configuration: config, 
                delegate: Delegate(), 
                delegateQueue: nil )

    guard let url = URL( string: urlstring ) else { 
                fatalError("Could not create URL object") 
    }

    print("start")
    
    session.dataTask( with: url ).resume()    

    let runLoop = RunLoop.current
    while (   shouldKeepRunning 
           && runLoop.run(mode:   .defaultRunLoopMode, 
                          before: .distantFuture ) ) {
    }

    print("end")

// eoff

```

``` swift
import UIKit
import PlaygroundSupport

let url = URL(string: "https://www.apple.com")!

let task = URLSession.shared.dataTask(with: url){ (data, response, Error) in
    if let data = data, let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume() // execute task
PlaygroundPage.current.needsIndefiniteExecution = true```

``` swift
#!/usr/bin/swift
print("Please enter your name:")

if let name = readLine() {
    print("Hello, \(name)!")
} else {
    print("Why are you being so coy?")
}

print("TTFN!")```

``` swift
#!/usr/bin/swift

var str = "Hello, playground"
print(str)

let miNombre="carlos"
print(miNombre)

var edad = "37"
print(edad)

var floatVariable: Float
floatVariable = 3.1416
print(floatVariable)

```

``` swift
class viewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView()    

    override func viewDidLoad {
      tableView.delegate = self			// it has to send the messages to self
      tableView.dataSource = self		
    }
```

``` swift
#!/usr/bin/swift

var myString = "Hello, World!"
print(myString)

// using semicolons:
;print(myString)
```

``` swift
#!/usr/bin/swift
print("Hello, world!")
```

``` swift
enum GameState {
    case start
    case win
    case lose
    case draw
    
    // Computed property for status. Enums may not contain stored properties.
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Won!"
        case .lose:
            return "You Lost!"
        case .draw:
            return "It's a Draw!"
        }
    }
}
let oneGameState = GameState.start
print(oneGameState)

let anotherGameState = GameState.win
print(anotherGameState)


```

``` swift
#!/usr/bin/swift

func fibonacci(_ n: Int) -> Int {
    if n <= 2 {
        return 1
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}

print(fibonacci(10))
```

``` swift
#!/usr/bin/swift
var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 17], "triangular": [1, 3, 6, 10, 15, 21, 28], "hexagonal": [1, 6, 15, 28, 45, 66, 91] ]

for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}

print(interestingNumbers["primes"]!)
// Prints "[17, 13, 11, 7, 5, 3, 2]"```

``` swift
#!/usr/bin/swift

var miFamilia = [ "norma": "hermana" , "trini": "hermanaChica" , "eduardo": "padre" , "sofia": "mama" ]

// agregando un numevo miembro
miFamilia["manchas"]="mi hijo"
print(miFamilia)

// agregando otro miembro
miFamilia["edith"]="prima"
print(miFamilia)

var dictionary: [String:Int] = [
    "one" : 1,
    "two" : 2,
    "three" : 3,
]
print(dictionary)
//agregando otro elemento
dictionary["four"]=4
print(dictionary)

```

``` swift
#!/usr/bin/swift
enum Size: Double {
    case oneQuarter = 0.25
    case ThreeOctave = 0.375
    case oneAndHalf = 0.50
    case threeQuarter = 0.75
    case one = 1.0
    case oneOneQuarter = 1.25
    case oneOneAndHalf = 1.50
    case two = 2.0
    case twoAndHalf = 2.5
    case three = 3.0
    case four = 4.0
}

struct SizePressureReducingValve {
    var standard: Size
    var quickChange: Size
    init(standard: Size, quickChange: Size) {
        self.standard = standard
        self.quickChange = quickChange
    }
}
let size = SizePressureReducingValve(standard: .oneOneAndHalf, quickChange: .three)

enum Model: String {
    case standard = "60"
    case highPressure = "60HP"
    case quickChange = "60QC"
    case largeDiaphragm = "61"
}
enum BodyMaterial: String {
    case ductilIron = "DI"
    case bronze = "BR"
    case carbonSteel = "CS"
    case stainlessSteel = "S6"
    case castIron = "CI"
}

struct HowToOrder {
    var model: Model
    var size: Size
    var bodyMaterial: BodyMaterial
    init(model: Model, size: Size, bodyMaterial: BodyMaterial) {
        self.model = model
        self.size = size
        self.bodyMaterial = bodyMaterial
    }
}
func selectSize(accordingToModel: Model) -> String {
    switch accordingToModel {
    case .standard: return "you Select Standard, you have to select the right sizes"
    case .highPressure: return "you select High Pressure, you have to select the right sizes"
    case .quickChange: return "you select Quick Change, you have to select the right sizes"
    case .largeDiaphragm: return "you select Large Diaphragm, you have to select the right sizes"
    }
}

let howToOrderValve1 = HowToOrder(model: .largeDiaphragm, size: .oneOneAndHalf , bodyMaterial: .bronze)
print(howToOrderValve1)
let howToOrderValve2 = HowToOrder(model: .quickChange, size: .one, bodyMaterial: .ductilIron)
print(howToOrderValve2)
let selection = selectSize(accordingToModel: .standard)
print(selection)
```

``` swift
#!/usr/bin/swift
import Foundation

struct ToDo {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    init(title: String, isComplete: Bool, dueDate: Date, notes: String?)
    {
        self.title = title
        self.isComplete = isComplete
        self.dueDate = dueDate
        self.notes = notes
    }
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    static func loadSampleToDos() -> [ToDo] {
        let todo1 = ToDo(title: "ToDo One", isComplete: false, dueDate: Date(), notes: "Notes 1")
        let todo2 = ToDo(title: "ToDo Two", isComplete: false, dueDate: Date(), notes: "Notes 2")
        let todo3 = ToDo(title: "ToDo Three", isComplete: false, dueDate: Date(), notes: "Notes 3")
        return [todo1, todo2, todo3]
    }
}
// declares an empty array of objects ToDo 
var todos = [ToDo]()
let savedToDos = nil
```

``` swift
#!/usr/bin/swift

enum Sign {
		case rock, paper, scissor

		var emoji: String {
				switch self {
					case .rock: return "rock"
					case .paper: return "paper"
					case .scissor: return "paper" }}

		func compare(otherSign: Sign) -> String {
					var result = ""
					if (self == .rock) {
							switch otherSign {
									case .rock: result = "draw"
									case .paper: result = "you lose"
									case .scissor: result = "you win"
							}	
						}
					if (self == .paper) {
							switch otherSign {
									case .rock: result = "you win"
									case .paper: result = "draw"
									case .scissor: result = "you lose"		
							}
						}						
					 					
					if (self == .scissor) {
							switch otherSign {
									case .rock: result = "you lose"
									case .paper: result = "you win"
									case .scissor: result = "draw"		
							}
						}
					return result
		}
}
		
let iChoosePaper = Sign.paper
//iChosePaper.compare(otherSign: .paper)
print("\(iChoosePaper.compare(otherSign: .paper))")

let iChooseScissor = Sign.scissor
print("\(iChooseScissor.compare(otherSign: .rock))")

let iChooseRock = Sign.rock
print("\(iChooseRock.compare(otherSign: .paper))")

```

``` swift
#!/usr/bin/swift

enum Sign {
		case rock, paper, scissor

		var emoji: String {
				switch self {
					case .rock: return "rock"
					case .paper: return "paper"
					case .scissor: return "paper" }}

		func compare(otherSign: Sign) -> String {
					if (self == otherSign) { return "Draw" }
					if (self != otherSign) {
								if (self == .rock) {
										switch otherSign {
											case .paper: return "you lose"
											case .scissor: return "you win"			
										}
								}
								if (self == .paper) {
										switch otherSign {
											case .rock: return "you win"
											case .scissor: return "you lose"			
										}
								}
								if (self == .scissor) {
										switch otherSign {
											case .rock:	return "you lose"
											case .paper: return "you win"
								}
								
					}} 
		}}
let oneGame = Sign.paper
oneGame.compare(otherSign: .paper)
print("\(oneGame.compare(otherSign: .paper))")
```

``` swift
#!/usr/bin/swift
enum Model: String {
    case Standard = "60"
    case HighPressure = "60HP"
    case QuickChange = "60QC"
    case LargeDiaphragm = "61"
    
    var feature: String {
        switch self {
        case .Standard: return "Standard"
        case .HighPressure: return "High Pressure"
        case .QuickChange: return "60QC"
        case .LargeDiaphragm: return "61"
        }
    }
}

enum Size: String {
    case oneQuarter = "025"
    case ThreeOctave = "038"
    case oneAndHalf = "050"
    case threeQuarter = "075"
    case one = "100"
    case oneOneQuarter = "125"
    case oneOneAndHalf = "150"
    case two = "200"
    case twoAndHalf = "250"
    case three = "300"
    case four = "400"
    
    var feature: String {
        switch self {
        case .oneQuarter: return "1/4 inch (DN8)"
        case .ThreeOctave: return "3/8 inch (DN10)"
        case .oneAndHalf: return "1/2 inch (DN15)"
        case .threeQuarter: return "3/4 inch (DN20)"
        case .one: return "1 inch (DN25)"
        case .oneOneQuarter: return "1-1/4 inch (DN32)"
        case .oneOneAndHalf: return "1-1/2 inch (DN40)"
        case .two: return "2 inch (DN50)"
        case .twoAndHalf: return "2-1/2 inch (DN65) (MK60/60HP only)"
        case .three: return "3 inch (DN80) (MK60/60HP only)"
        case .four: return "4 inch (DN100) (MK60/60HP only)"
        }
    }
}

enum BodyMaterial: String {
    case DultilIron = "DI"
    case Bronze = "BR"
    case CarbonSteel = "CS"
    case StainlessSteel = "S6"
    case CastIron = "CI"
    
    var feature: String {
        switch self {
        case .DultilIron: return "Ductil Iron"
        case .Bronze: return "Bronze"
        case .CarbonSteel: return "Carbon Steel"
        case .StainlessSteel: return "Stainless Steel"
        case .CastIron: return "Cast Iron"
        }
    }
}

enum EndConnections: String {
    case NPT = "PT"
    case BSPT = "BT"
    case BSPP = "BP"
    case FSW = "SW"
    case oneHundredFiftyIFE = "I5"
    case oneHundredFiftyFE = "F5"
    case threeHundredIFE = "I3"
    case threeHundredFE = "F3"
    var feature: String {
        switch self {
        case .NPT: return "NPT"
        case .BSPT: return "BSPT"
        case .BSPP: return "BSPP"
        case .FSW: return "FSW"
        case .oneHundredFiftyIFE: return "150# IFE"
        case .oneHundredFiftyFE: return "150# FE (Except IFE)"
        case .threeHundredIFE: return "300# IFE"
        case .threeHundredFE: return "300# FE (Except IFE)"
        }
    }
}
enum Trim: String {
    case threeHundredThreeSS = "S3"
    case threeHundredSixteenSS = "S6"
    case threeHundredThreeSSFIFE = "I3"
    case threeHundredSixteenSSFIFE = "I6"
    var feature: String {
        switch  self {
        case .threeHundredThreeSS: return "303SS"
        case .threeHundredSixteenSS: return "316SS"
        case .threeHundredThreeSSFIFE: return "303SSF/IFE (1/2 - 2 CS/S6)"
        case .threeHundredSixteenSSFIFE: return "316SSF/IFE (1/2 - 2 CS/S6)"
        }
    }
    
}

struct HowToOrderMK60 {
    var model: Model
    var size: Size
    var bodyMaterial: BodyMaterial
    var endConnection: EndConnections
    var trim: Trim
}

var valvula1 = HowToOrderMK60(model: .LargeDiaphragm, size: .ThreeOctave, bodyMaterial: .StainlessSteel, endConnection: .NPT, trim: .threeHundredSixteenSS)
print("El modelo es: MK\(valvula1.model.rawValue)-\(valvula1.size.rawValue)-\(valvula1.bodyMaterial.rawValue)-\(valvula1.endConnection.rawValue)")
print("\(valvula1.model.rawValue) : \(valvula1.model.feature)")
print("\(valvula1.size.rawValue) : \(valvula1.size.feature)")
print("\(valvula1.bodyMaterial.rawValue) : \(valvula1.bodyMaterial.feature)")
print("\(valvula1.endConnection.rawValue) : \(valvula1.endConnection.feature)")
print("\(valvula1.trim.rawValue) : \(valvula1.trim.feature)")
```

