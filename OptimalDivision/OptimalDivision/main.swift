//
//  main.swift
//  OptimalDivision
//
//  Created by MORSE, DAN on 5/24/21.
//

import Foundation

class Solution {
    func optimalDivision(_ nums: [Int]) -> String {
        if nums.count == 0 {
            return ""
        }
        if nums.count == 1 {
            return "\(nums[0])"
        }
        if nums.count == 2 {
            return "\(nums[0])/\(nums[1])"
        }
        
        var resultString = "\(nums[0])/("
        
        for index in 1..<nums.count {
            resultString += "\(nums[index])"
            if nums.count - 1 > index {
                resultString += "/"
            }
        }
        
        resultString += ")"
        return resultString
    }
}

let s = Solution()
print(s.optimalDivision([1,2,3]))
