var intAsArray = [1, 2, 9]


// 130
func sum1ToArray(array: [Int]) -> [Int] {
    var newArray = array
    var currExtra = 0
    
    if arrayNeedsExpansion(array) {
        var resizedArray = [Int]()
        resizedArray.append(1)
        for j in 0..<newArray.count {
            resizedArray.append(newArray[j])
        }
        return resizedArray
    } else {
        for i in (0..<newArray.count).reverse() {
            let tempBuffer: Int
            if i == newArray.count - 1 {
                tempBuffer = newArray[i] + currExtra + 1
            } else {
                tempBuffer = newArray[i] + currExtra
            }
            
            let division = tempBuffer / 10
            let digit = tempBuffer % 10
            currExtra = division
            newArray[i] = digit
        }
    }
    return newArray
}

func arrayNeedsExpansion(array: [Int]) -> Bool {
    for i in array {
        if i != 9 {
            return false
        }
    }
    return true
}

print(sum1ToArray(intAsArray))
