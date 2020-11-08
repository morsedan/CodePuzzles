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

// Added this recursive solution, solution to come
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
// This one was most popular, but the compiler doesn't seem to like it
//func digitalRootSolution1(of number: Int) -> Int {
//    let digit = String(number).characters.flatMap { Int(String($0)) }.reduce(0, +)
//    return digit > 9 ? digitalRoot(of: digit) : digit
//}
// This one is amazing.
func digitalRootSolution2(of number: Int) -> Int {
    return (number - 1) % 9 + 1
}

assert(digitalRootSolution2(of: 16) == 7)
assert(digitalRootSolution2(of: 456) == 6)
assert(digitalRootSolution2(of: 942) == 6)
assert(digitalRootSolution2(of: 132189) == 6)
assert(digitalRootSolution2(of: 493193) == 2)
print("passed!")
