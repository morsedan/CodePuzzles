//
//  main.swift
//  Non-decreasingArray
//
//  Created by morse on 6/12/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func checkPossibility2(_ nums: [Int]) -> Bool {
        if nums == [] {
            return true
        }
        
        var earlierLargerCount = 0
        var currentGreatest = nums[0]
        
        for index in 1..<nums.count {
            if nums[index] < currentGreatest {
                earlierLargerCount += 1
            }
            if earlierLargerCount >= 2 {
                return false
            }
        }
        
        return earlierLargerCount <= 1
    }
    
    func checkPossibility(_ nums: [Int]) -> Bool {
        if nums == [] {
            return true
        }
        
        var greatest = nums[0]
        var haveModifiedOne = false
        
        for index in 1..<nums.count {
            if nums[index - 1] > nums[index] || nums[index] < greatest {
                if !haveModifiedOne {
                    greatest = [nums[index], nums[index - 1]].max()!
                    haveModifiedOne = true
                } else {
                    return false
                }
            } else {
                greatest = nums[index]
            }
        }
        
        return true
    }
}

let case1 = [4,2,3]
let case2 = [4,2,1]
let case3 = [3,4,2,3]

let s = Solution()

print(s.checkPossibility(case1)) // true
print(s.checkPossibility(case2)) // false
print(s.checkPossibility(case3)) // false
print(s.checkPossibility([1])) // true

// Get greatest so far.
// If first greater than second
//      If modified
//          
//  If have not modified, greatest is second
//  else return false
