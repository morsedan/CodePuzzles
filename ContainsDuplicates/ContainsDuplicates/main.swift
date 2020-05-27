//
//  main.swift
//  ContainsDuplicates
//
//  Created by morse on 5/26/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
//        return Set(nums).count < nums.count
        var checked: Set<Int> = []
        for number in nums {
            if checked.contains(number) {
                return true
            } else {
                checked.insert(number)
            }
        }
        return false
    }
}

