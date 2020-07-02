//
//  main.swift
//  DCP002
//
//  Created by morse on 7/2/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

/*
 Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.
 For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
 Follow-up: what if you can't use division?
 */

func makeProducts(_ numbers: [Int]) -> [Int] {
//    let copyOfNumbers = numbers
    var products: [Int] = []
    
    for i in 0..<numbers.count {
        var number = 1
        for j in 0..<numbers.count {
            if i == j {
                continue
            }
            number *= numbers[j]
        }
        products.append(number)
    }
    
    return products
}

var numbers = [3, 2, 1]
print(makeProducts(numbers))
numbers = [1, 2, 3, 4, 5]
print(makeProducts(numbers))
