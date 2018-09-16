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

