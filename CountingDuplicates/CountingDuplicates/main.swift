//
//  main.swift
//  CountingDuplicates
//
//  Created by morse on 10/31/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func countDuplicates(_ s:String) -> Int {
    let s = s.lowercased()
    var numberOfDuplicates = 0
    var characters = Set<String.Element>()
    var countedCharacters = Set<String.Element>()
    
    for character in s {
        if characters.contains(character) && !countedCharacters.contains(character) {
            numberOfDuplicates += 1
            countedCharacters.insert(character)
        } else {
            characters.insert(character)
        }
    }
    
    return numberOfDuplicates
}

let string1 = "aa11"
assert(countDuplicates(string1) == 2)
let string2 = "Aa11"
assert(countDuplicates(string2) == 2)
let string3 = "A11"
assert(countDuplicates(string3) == 1)
let string4 = "A11111111"
assert(countDuplicates(string4) == 1)

print("passed!")
