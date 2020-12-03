//
//  main.swift
//  NonConsecutive
//
//  Created by morse on 11/28/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  return []
}

func test_allNonConsecutive() {
    func equal(_ first: [(Int, Int)], _ second: [(Int, Int)]) -> Bool{
        if first.count != second.count {
            return false
        }
        for (index, pair) in first.enumerated() {
            if pair.0 != second[index].0 ||
                pair.1 != second[index].1 {
                return false
            }
        }
        return true
    }
    
    func check(_ nums: [Int], _ solution: [(Int, Int)]) {
        assert(equal(allNonConsecutive(nums), solution))
    }
    
    var nums = [1,2,3,4,6,7,8,10]
    var solution = [(4, 6), (7, 10)]
    check(nums, solution)
    nums = [1,2,3,4,6,7,8,15,16]
    solution = [( 4, 6 ), ( 7, 15 )]
    check(nums, solution)
}

test_allNonConsecutive()
print("passed!")
