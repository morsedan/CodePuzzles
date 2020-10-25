//
//  main.swift
//  SumOfDigits
//
//  Created by morse on 10/24/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

//func digitalRoot(of number: Int) -> Int {
//    var number = number
//
//    while number >= 10 {
//        number = sumDigit(number)
//    }
//
//    return number
//}
//
//func sumDigit(_ number: Int) -> Int {
//    var digitSum = 0
//    var number = number
//
//    while number >= 10 {
//        digitSum += number % 10
//        number /= 10
//    }
//    digitSum += number
//
//    return digitSum
//}
func digitalRoot(of number: Int) -> Int {
    var digitSum = 0
    var number = number
    
    while number >= 10 {
        digitSum += number % 10
        number /= 10
    }
    
    digitSum += number
    
    if digitSum < 10 {
        return digitSum
    }
    
    digitSum = digitalRoot(of: digitSum)
    
    return digitSum
}

assert(digitalRoot(of: 16) == 7)
assert(digitalRoot(of: 456) == 6)
assert(digitalRoot(of: 942) == 6)
assert(digitalRoot(of: 132189) == 6)
assert(digitalRoot(of: 493193) == 2)
print("passed!")
