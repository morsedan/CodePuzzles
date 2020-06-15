//
//  main.swift
//  ReverseInteger
//
//  Created by morse on 6/15/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var isNegative = false
        var number = x
        if x < 0 {
            isNegative = true
        }
        
        if isNegative {
            number *= -1
        }
        
        
        
        let xString = String(number)
        let reversedXString = xString.reversed()
        var reversedX = Int(String(reversedXString))!
        if isNegative {
            reversedX *= -1
        }
        
        print(reversedX, reversedX > (2 ^ 31 - 1))
        print(2 ^ 31 - 1)
        if reversedX > Int((pow(2, 31) - 1)) || reversedX < (-2 ^ 31) {
            return 0
        }
        
        return reversedX
    }
}

let number1 = 12345678
let number2 = -123
let number3 = 1534236469

let s = Solution()
print(s.reverse(number1)) // 87654321
print(s.reverse(number2)) // -321
print(s.reverse(number3)) // 0
