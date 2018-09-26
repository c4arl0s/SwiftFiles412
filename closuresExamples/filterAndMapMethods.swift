let names = ["norma", "carlos", "trini", "lola", "memo"]
let shortNames = names.filter { name in name.characters.count < 5 }
print(shortNames)