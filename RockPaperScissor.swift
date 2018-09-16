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
