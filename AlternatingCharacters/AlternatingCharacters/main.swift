//
//  main.swift
//  AlternatingCharacters
//
//  Created by morse on 5/26/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

// replacing occurences of

func alternatingCharacters(s: String) -> Int {
    var deletions = 0
    var previousLetter: Character = "X"
    for letter in s {
        if letter == previousLetter {
            deletions += 1
        } else {
            previousLetter = letter
        }
    }
    return deletions
}

let test1 = "ABABBABAB"
print(alternatingCharacters(s: "ABABABAB"))
print(alternatingCharacters(s: test1))

