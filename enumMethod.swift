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


