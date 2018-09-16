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
