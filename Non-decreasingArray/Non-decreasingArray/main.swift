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
        var previousGreatest = nums[0]
        var haveModifiedOne = false
        
        for index in 1..<nums.count {
            if nums[index - 1] > nums[index] || nums[index] < greatest {
                if !haveModifiedOne {
                    greatest = [nums[index], nums[index - 1]].min()!
                    haveModifiedOne = true
                } else {
                    return false
                }
                
            } else {
                greatest = nums[index - 1]
            }
        }
        
        return true
    }
}

let case1 = [4,2,3]
let case2 = [4,2,1]
let case3 = [3,4,2,3]
let case4 = [1,2,3,4,100,6,7,8]
let case5 = [1,2,3,4,-100,6,7,8]

let s = Solution()

print(s.checkPossibility(case1)) // true
print(s.checkPossibility(case2)) // false
print(s.checkPossibility(case3)) // false
print(s.checkPossibility(case4)) // true
print(s.checkPossibility(case5)) // true
print(s.checkPossibility([1])) // true

//  if lhs > rhs
//      if index = 1
//          didModify
//      else
//          
