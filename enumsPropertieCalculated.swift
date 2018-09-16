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
