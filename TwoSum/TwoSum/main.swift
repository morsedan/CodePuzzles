//
//  main.swift
//  TwoSum
//
//  Created by morse on 5/27/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    /*Runtime: 476 ms, faster than 22.49% of Swift online submissions for Two Sum.
    Memory Usage: 21 MB, less than 5.88% of Swift online submissions for Two Sum.
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for index in 0..<nums.count-1 {
            for y in index+1..<nums.count {
                if nums[index] + nums[y] == target {
                    return [index, y]
                }
            }
        }
        return [0]
    }
    */
    /*
     Runtime: 40 ms, faster than 46.45% of Swift online submissions for Two Sum.
     Memory Usage: 22 MB, less than 5.88% of Swift online submissions for Two Sum.
     
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDict: [Int: [Int]] = [:]
        for index in 0..<nums.count {
            if numDict[nums[index]] == nil {
                numDict[nums[index]] = [index]
            } else {
                numDict[nums[index]]?.append(index)
            }
        }
        for number in nums {
            if numDict[target - number] != nil {
                if number == target - number {
                    if let valArray = numDict[number] {
//                        print(valArray.count, valArray)
                        if valArray.count > 1 {
                            return [valArray[0], valArray[1]]
                        }
                    }
                } else {
                    return[numDict[number]![0], numDict[target - number]![0]]
                }
            }
        }
        return[0]
    }
 */
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDict: [Int: Int] = [:]
        for index in 0..<nums.count {
            if let compliment = numDict[target - nums[index]] {
                return [compliment, index]
            } else {
                numDict[nums[index]] = index
            }
        }
        return[0]
    }
}

var nums = [2, 7, 11, 15]
var target = 9
let s = Solution()
print(s.twoSum(nums, target)) // [0, 1]
nums = [3,2,4]
target = 6
print(s.twoSum(nums, target)) // [1, 2]
nums = [3,3]
target = 6
print(s.twoSum(nums, target)) // [0, 1]
