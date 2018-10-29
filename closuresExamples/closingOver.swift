func addScore(_ points: Int) -> Int 
		{
			let score = 12
			print(score)
			let calculate = {					// closure
					return score + points
			}
			return calculate()				// returns a function
}
let value = addScore(8)
print(value)