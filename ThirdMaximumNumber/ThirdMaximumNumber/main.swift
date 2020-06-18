//
//  main.swift
//  ThirdMaximumNumber
//
//  Created by morse on 6/16/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

/*
 options:
 - sort, then count backwards until getting to third unique number
 - eliminate duplicates, sort, then get third from end
 */

class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return nums.max()!
        }
        
        let sortedNumbers = nums.sorted()
        var nthDistinct = 1
        var index = sortedNumbers.count - 1
        var previousMax = sortedNumbers[index]
        
        while index >= 0 {
            if sortedNumbers[index] != previousMax {
                nthDistinct += 1
                previousMax = sortedNumbers[index]
            }
            if nthDistinct == 3 {
                return sortedNumbers[index]
            }
            index -= 1
        }
        return nums.max()!
    }
}

let s = Solution()

let numbers1 = [3, 2, 1] // 1
let numbers2 = [1, 2] // 2
let numbers3 = [2, 2, 3, 1] // 1

print(s.thirdMax(numbers1))
print(s.thirdMax(numbers2))
print(s.thirdMax(numbers3))
