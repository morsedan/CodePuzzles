//
//  main.swift
//  LemonadeChange
//
//  Created by morse on 7/3/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var fives = 0
        var tens = 0
        
        for bill in bills {
            if bill == 5 {
                fives += 1
            } else if bill == 10 {
                tens += 1
                fives -= 1
            } else {
                if tens == 0 {
                    fives -= 3
                } else {
                    tens -= 1
                    fives -= 1
                }
            }
            if fives < 0 || tens < 0 {
                return false
            }
        }
        
        return fives >= 0 && tens >= 0
    }
}

let s = Solution()
var bills = [5,5,10]
print(s.lemonadeChange(bills))
bills = [5,5,5,10,20]
print(s.lemonadeChange(bills))
bills = [10,10]
print(s.lemonadeChange(bills))
bills = [5,5,10,10,20]
print(s.lemonadeChange(bills))
