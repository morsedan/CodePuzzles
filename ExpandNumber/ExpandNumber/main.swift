//
//  main.swift
//  ExpandNumber
//
//  Created by Daniel Morse on 12/18/20.
//  Copyright © 2020 Daniel Morse. All rights reserved.
//

import Foundation

func expand1(_ num: Int) -> String {
    guard num > -1 else { return "Negative numbers cannot be expanded." }
    var shrinkingNumber = num
    var digits = [Int]()
    var expandedString = ""
    
    // Break it down
    while shrinkingNumber >= 10 {
        digits.append(shrinkingNumber % 10)
        shrinkingNumber /= 10
    }
    digits.append(shrinkingNumber)
    
    //Build it up
    for differential in 1...digits.count {
        let index = digits.count - differential
        if digits[index] >= 1 {
            expandedString += "\(digits[index])"
            for _ in 0..<index {
                expandedString += "0"
            }
            if index >= 1 {
                expandedString += " + "
            }
        }
    }
    
    while expandedString.hasSuffix(" + ") {
        expandedString = "\(expandedString.dropLast(3))"
    }
    
    return expandedString
}

func expand(_ num: Int) -> String {
    guard num > -1 else { return "Negative numbers cannot be expanded." }
    var shrinkingNumber = num
    var digits = [String]()
    var position = 0
    
    // Break it down
    while shrinkingNumber > 10 {
        if shrinkingNumber % 10 > 0 {
            var thisDigit = "\(shrinkingNumber % 10)"
            for _ in 0..<position {
                thisDigit += "0"
            }
            digits.append(thisDigit)
        }
        shrinkingNumber /= 10
        position += 1
    }
    
    // Build it up
    var zeroes = ""
    for _ in 0..<position {
        zeroes += "0"
    }
    digits.append("\(shrinkingNumber)\(zeroes)")
    return digits.reversed().joined(separator: " + ")
}

func testExpand() {
//    assert(expand(0) == "")
    assert(expand(-100) == "Negative numbers cannot be expanded.")
    assert(expand(25) == "20 + 5")
    assert(expand(325) == "300 + 20 + 5")
    assert(expand(320) == "300 + 20")
    assert(expand(30500) == "30000 + 500")
    assert(expand(300005) == "300000 + 5")
    assert(expand(30005000) == "30000000 + 5000")
}

testExpand()
print("passed!")
