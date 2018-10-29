func addScore(_ points: Int) -> Int
{
    let score = 42
    let calculate = {
        return score + points
    }
    return calculate()
}
let value = addScore(11)
print(value)

// 
