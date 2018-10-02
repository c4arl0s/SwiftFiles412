// A lazy stored property is a property whose initial value is not calculated until the first time it is used. 
// You indicate a lazy stored property by writing the lazy modifier before its declaration.

class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")