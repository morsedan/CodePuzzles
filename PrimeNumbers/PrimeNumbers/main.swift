//
//  main.swift
//  PrimeNumbers
//
//  Created by morse on 2/6/21.
//  Copyright © 2021 morse. All rights reserved.
//

import Foundation

var primes: Set<Int> = [2, 3]
extension Int {
    func isPrime() -> Bool {
        if self < 2 {
            return false
        }
        if primes.contains(self) {
            return true
        } else {
            for number in 2...self / 2 {
                if self % number == 0 {
                    return false
                }
            }
        }
        primes.insert(self)
        return true
    }
}

func getPrimes(from start: Int, to end: Int) -> [Int] {
    var result: [Int] = []
    var numbers = start > end ? end...start : start...end

    for number in numbers {
        if number.isPrime() {
            result.append(number)
        }
    }
    
    return result
}

func test() {
    assert(2.isPrime() == true)
    assert(10.isPrime() == false)
    assert(0.isPrime() == false)
    assert(getPrimes(from: 0, to: 30) == [2, 3,5, 7, 11, 13, 17, 19, 23, 29])
    assert(getPrimes(from: 30, to: 0) == [2, 3,5, 7, 11, 13, 17, 19, 23, 29])
}
print(15.isPrime())
print(getPrimes(from: 0, to: 30))
test()
print("passed!")
