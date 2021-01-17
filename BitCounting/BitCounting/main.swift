//
//  main.swift
//  BitCounting
//
//  Created by morse on 1/17/21.
//

import Foundation

func countBits(_ n: Int) -> Int {
    var binary = 0
    var ones = 0
    var currentPlace = 1
    var number = n
    
    while currentPlace * 2 <= number {
        currentPlace *= 2
        binary += 1
    }
    
    for _ in 0...binary {
        if number >= currentPlace {
            ones += 1
            number -= currentPlace
        }
        currentPlace /= 2
    }
    
    return ones
}

func test() {
    assert(1 == countBits(4))
    assert(3 == countBits(7))
    assert(2 == countBits(9))
    assert(2 == countBits(10))
    assert(5 == countBits(1234))
}
test()
print("passed!")
