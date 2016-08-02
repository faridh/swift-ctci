// 1.2 Check Permutation: Given two strings, write a method to decide
// if one is permutation of the other

func isPermutation(a:String, b:String) -> Bool {
    if a == b {
        return true
    }
    if a.characters.count != b.characters.count {
        return false
    }
    var charOccurrences = [Character: Int]()
    for i in 0..<a.characters.count {
        let charA = a[a.startIndex.advancedBy(i)]
        let charB = b[b.startIndex.advancedBy(i)]
        
        if charOccurrences[charA] != nil {
            charOccurrences[charA]! += 1
        } else {
            charOccurrences[charA] = 1
        }
        if charOccurrences[charB] != nil {
            charOccurrences[charB]! += 1
        } else {
            charOccurrences[charB] = 1
        }
    }
    for (_, v) in charOccurrences {
        if v % 2 != 0 {
            return false
        }
    }
    return true
}

print(isPermutation("perro", b: "orrep"))
print(isPermutation("perro", b: "oorrep"))
print(isPermutation("perro", b: "pato"))
print(isPermutation("perro", b: "borrego"))
print(isPermutation("tumamita", b: "tamamitu"))
print(isPermutation("1", b: "2"))
print(isPermutation("___", b: "oorrep"))
print(isPermutation("123123", b: "123321"))