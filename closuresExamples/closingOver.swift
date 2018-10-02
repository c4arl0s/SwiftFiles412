func addScore(_ points: Int) -> Int 
		{
			let score = 12 ; print(score)
			let calculate = {
					return score + points
			}
			return calculate()
}
let value = addScore(8)
print(value)