//
//  main.swift
//  ThreeNumberSum
//
//  Created by morse on 5/29/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

//func threeNumberSum(arr: [Int], target: Int) -> [[Int]] {
//    var sortedNumbers = arr.sorted()
//
//    var abreviatedNumbers: [Int] = sortedNumbers
//    var results: [[Int]] = []
//    for index in 0..<sortedNumbers.count-2 {
//        var isPossibility = false
//        print(abreviatedNumbers, sortedNumbers)
//        if sortedNumbers[index] + sortedNumbers[sortedNumbers.count-2] + sortedNumbers.last! >= target {
//            isPossibility = true
//        }
//        if !isPossibility {
//            abreviatedNumbers.remove(at: abreviatedNumbers.firstIndex(of: sortedNumbers[index])!)
//        }
//    }
//    abreviatedNumbers.reverse()
//
//
//    for i1 in 0..<abreviatedNumbers.count {
//
//        for i2 in i1+1..<abreviatedNumbers.count {
//            for i3 in i2+1..<abreviatedNumbers.count {
//                if abreviatedNumbers[i1] + abreviatedNumbers[i2] + abreviatedNumbers [i3] == target {
//                    results.append([abreviatedNumbers[i3], abreviatedNumbers[i2], abreviatedNumbers[i1]])
//                }
//            }
//        }
//    }
//    return results.sorted { $0[0] < $1[0] }
//}

func threeNumberSum(arr: [Int], target: Int) -> [[Int]] {
    let sortedNumbers = arr.sorted()
    var trimmedNumbers = sortedNumbers
    var results: [[Int]] = []
    
    for index in 0..<sortedNumbers.count - 2 {
        if sortedNumbers[index]
            + sortedNumbers[sortedNumbers.count - 2]
            + sortedNumbers[sortedNumbers.count - 1]
            < target {
            trimmedNumbers.remove(at: 0)
        } else {
            break
        }
    }
    
    let numberSet = Set<Int>(trimmedNumbers)
    for i in 0..<sortedNumbers.count - 1 {
        for j in i..<sortedNumbers.count - 1 {
            if target - (sortedNumbers[i] + sortedNumbers[j]) != sortedNumbers[i] &&
                target - (sortedNumbers[i] + sortedNumbers[j]) != sortedNumbers[j] {
                if numberSet.contains(target - (sortedNumbers[i] + sortedNumbers[j])) {
                    results.append([sortedNumbers[i], sortedNumbers[j], target - (sortedNumbers[i] + sortedNumbers[j])])
                    print(sortedNumbers[i], sortedNumbers[j], target - (sortedNumbers[i] + sortedNumbers[j]))
                }
            }
        }
    }
    
    return results
}

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 15]
print(threeNumberSum(arr: numbers, target: 30)) // [[15, 9, 6], [15, 8, 7]]
