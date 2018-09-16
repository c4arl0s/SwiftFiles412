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


