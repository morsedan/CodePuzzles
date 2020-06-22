//
//  main.swift
//  MinimumMovesToEqualArrayElements
//
//  Created by morse on 6/18/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

/*
 Sort the array
 increase all but the last by one
 repeat until all are equal
 */

class Solution {
    
    func minMoves(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        return sum - nums.min()! * nums.count
    }
    
    func minMoves1(_ nums: [Int]) -> Int {
        var moveCount = 0
        let sortedNumbers = nums.sorted()
        
        for index in 1..<sortedNumbers.count {
            moveCount += sortedNumbers[index] - sortedNumbers[0]
        }
        return moveCount
    }
    
    func minMoves2(_ nums: [Int]) -> Int {
        var moveCount = 0
        var numbers = nums.sorted()
        while numbers.sorted().first! != numbers.sorted().last! {
            for (index, number) in numbers.enumerated() {
                
                if index != numbers.count - 1 {
                    numbers[index] += 1
                }
            }
            numbers.sort()
            print(numbers)
            moveCount += 1
        }
        return moveCount
    }
}


let numbers1 = [1, 2, 3]
let numbers2 = [1, 5, 20]
let numbers3 = [1, 5, 20, 21]
let numbers4 = [1, 3, 20]
let numbers5 = [0, 0]
let numbers6 = [-1, 1]

let s = Solution()
print(s.minMoves(numbers1))
print(s.minMoves(numbers2))
print(s.minMoves(numbers3))
print(s.minMoves(numbers4))
print(s.minMoves(numbers5))
print(s.minMoves(numbers6))
