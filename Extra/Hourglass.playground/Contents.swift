// number of elements
// var n = Int(readLine()!)!
// read array
// var arr = readLine()!.characters.split(" ").map(String.init)
// Given a list of integers and a target number
// list all pairs that sum up to that number

let target: Int = 10
var sequence: [Int] = [1, 2, 3, 5, 5, 10, 4, 6]
var matchingCombinations = [[Int]]()

func findSequence(sequence: [Int], target: Int) {
    for i in 0..<sequence.count {
        for j in 0..<sequence.count {
            if i == j {
                continue
            } else {
                let a = sequence[i]
                let b = sequence[j]
                if a + b == target {
                    if !matchingCombinations.contains({ element in
                        return (element as [Int]) == [a, b] ||
                        element as [Int] == [b, a]
                    }) {
                        matchingCombinations.append([a, b])
                    }
                }
            }
        }
    }
    print(matchingCombinations)
}

findSequence(sequence, target: target)

// Counting the islands.
// Given a map N x N, 2-D array
// 0 - sea
// X - land
//
// Land is connected by 4-Neighbor connections, i.e.:
// above, down, left and right.
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
// 0000000000000000000X000000000000000
// 000000000000000000XXX00000000000000
// 000XX000000000000000000000000000000
// 000XXXX0000000000000000000000000000
// 0000000X000000000000000000000000000
// 00000000000000000000000000000000000
// 000000000000000000000X0000000000000
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
// 00000000000000000000000000000000000
//
// Output of this map: 4 (totally 4 islands on the map)
//


// Number list compressing.
// Given an sorted array. Input: sorted number list
// 1, 2, 3,10, 25, 26, 30, 31, 32, 33
// Output: find consecutive segments
// print: 1-3, 10, 25-26, 30-33

// Given an array, remove the duplicates and
// return a unique array keeping the first
// occurrence of the duplicates and the order.
// [@2, @1, @3, @1, @2] --> [@2, @1, @3]

// Given Nodes such as
// M->N->T->D->E
// |  |  |  |
// C  X  Y  L
// |  |
// A  Z
//
// -> right pointer
// | down pointer
//
// Output should be
// M->C->A->N->X->Z->T->Y->D-L>E
//
// Write this to flatten
// flatten(Node head) {
//    
// }
//
// Node {
//   Node right;
//   Node down;
//   char a;
// }
