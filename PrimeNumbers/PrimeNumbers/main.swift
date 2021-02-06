//
//  main.swift
//  PrimeNumbers
//
//  Created by morse on 2/6/21.
//  Copyright © 2021 morse. All rights reserved.
//

import Foundation

//var primes: Set<Int> = [2, 3]
//extension Int {
//    func isPrime() -> Bool {
//        if self < 2 {
//            return false
//        }
//        if primes.contains(self) {
//            return true
//        } else {
//            for number in 2...Int(Double(self).squareRoot()) {
//                if self % number == 0 {
//                    return false
//                }
//            }
//        }
//        primes.insert(self)
//        return true
//    }
//}

func getPrimes2(from start: Int, to end: Int) -> [Int] {
    var result: [Int] = []
    let numbers = start > end ? end...start : start...end

    for number in numbers {
        if number.isPrime() {
            result.append(number)
        }
    }
    
    return result
}

extension Int {
    func isPrime() -> Bool {
        guard self != 2, self != 3 else { return true }
        guard self != 1, self % 6 == 1 || self % 6 == 5 else { return false }
        
        for n in Swift.stride(from: 5, through: Int(sqrt(Double(self))), by: 2) {
            guard self % n != 0 else { return false }
        }
        
        return true
    }
}

func getPrimes(from start: Int, to end: Int) -> [Int] {
    return (min(start, end)...max(start, end)).filter { $0.isPrime() }
}

func test() {
    assert(2.isPrime() == true)
    assert(10.isPrime() == false)
    assert(0.isPrime() == false)
    assert(getPrimes(from: 0, to: 30) == [2, 3,5, 7, 11, 13, 17, 19, 23, 29])
    assert(getPrimes(from: 30, to: 0) == [2, 3,5, 7, 11, 13, 17, 19, 23, 29])
}

test()
print("passed!")
