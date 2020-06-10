//
//  main.swift
//  CamelCase
//
//  Created by morse on 6/10/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func camelcase(s: String) -> Int {
    var count = 1
    let caps = Set<Character>(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"])
    for character in s {
        if caps.contains(character) {
            count += 1
        }
    }
    print(count)
    return count
}

let s = "saveChangesInTheEditor"

camelcase(s: s)
