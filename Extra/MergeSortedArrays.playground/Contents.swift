let a = [1, 3, 5, 7, 11, 128]
let b = [1, 2, 4, 8, 16, 32, 64]
let c = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233]
let d = [0, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233]

func mergeArrays(arrayA: [Int], arrayB: [Int]) -> [Int] {
    
    var newArray = [Int]()
    
    var minArray = arrayA.count - arrayB.count < 0 ? arrayA : arrayB
    var maxArray = arrayA.count - arrayB.count < 0 ? arrayB : arrayA
    var indexMin = minArray.count - 1
    var indexMax = maxArray.count - 1
    
    while indexMax >= 0 && indexMin >= 0 {
        if minArray[indexMin] == maxArray[indexMax] {
            newArray.append(minArray[indexMin])
            indexMin -= 1
            indexMax -= 1
        } else if minArray[indexMin] > maxArray[indexMax] {
            newArray.append(minArray[indexMin])
            indexMin -= 1
        } else if minArray[indexMin] < maxArray[indexMax] {
            newArray.append(maxArray[indexMax])
            indexMax -= 1
        }
    }
    
    return newArray.reverse()
}

print(mergeArrays(a, arrayB: b))
print(mergeArrays(b, arrayB: c))
print(mergeArrays(c, arrayB: d))
print(mergeArrays(d, arrayB: a))
