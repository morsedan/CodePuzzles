//
//  main.swift
//  DuplicateEncoder
//
//  Created by morse on 10/3/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func duplicateEncode(_ word: String) -> String {
    var visited: [Character: Int] = [:]
    
    
    
    for letter in word.lowercased() {
//        New way I discovered on codewars:
        visited[letter, default: 0] += 1
//        My old way:
//        if visited.keys.contains(letter) {
//            visited[letter]! += 1
//        } else {
//            visited[letter] = 1
//        }
    }
//    functional way:
    let result = word.lowercased().map { letter in visited[letter]! > 1 ? ")" : "(" }.joined()
//    long way:
//    var result = ""
//    for letter in word.lowercased() {
//        if visited[letter]! > 1 {
//            result.append(")")
//        } else {
//            result.append("(")
//        }
//    }
    return result
}

func testBasics() {
    assert(duplicateEncode("din") == "(((")
    assert(duplicateEncode("recede") == "()()()")
    assert(duplicateEncode("Success") == ")())())", "should ignore case")
    assert(duplicateEncode("(( @") == "))((")
}
testBasics()
print("passed!")
