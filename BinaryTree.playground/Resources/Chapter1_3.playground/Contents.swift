// 1.3 URLify: Write a method to replace all spaces
// in a string with '%20'. You may assume that the string
// has sufficient space at the end to hold the additional
// characters, and that you are given the "true" length
// of the string.

func urlify(stringToURL: String) -> String {
    var stringAsArray = Array(stringToURL.characters)
    var displacement = 0
    for charS in stringAsArray {
        if charS == " " {
            displacement += 1
        }
    }
    if displacement == 0 {
        return stringToURL
    }
    displacement = displacement / 3 * 2
    
    var characterFound = false
    for i in (0..<stringAsArray.count).reverse() {
        var char = stringAsArray[i]
        if char == " " && characterFound {
            stringAsArray[i+displacement] = "0"
            stringAsArray[i+displacement-1] = "2"
            stringAsArray[i+displacement-2] = "%"
            displacement -= 2
        } else if char != " " && displacement > 0 {
            stringAsArray[i+displacement] = char
            stringAsArray[i] = " "
            characterFound = true
        }
    }
    return String(stringAsArray);
}

print(urlify("Mr John Smith    "))
print(urlify("Peluche"))
print(urlify("Pelos Magicos  "))
