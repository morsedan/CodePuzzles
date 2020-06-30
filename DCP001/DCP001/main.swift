//
//  main.swift
//  DCP001
//
//  Created by morse on 6/30/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation
/*
Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

Bonus: Can you do this in one pass?
*/


func addUpToK(_ numbers: [Int], _ k: Int) -> Bool {
    var numberSet = Set<Int>()
    for number in numbers {
        if numberSet.contains(k - number) {
            return true
        }
        numberSet.insert(number)
    }
    return false
}

let numbers = [10, 15, 3, 7]
let k = 17

print(addUpToK(numbers, k))
