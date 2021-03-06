//
//  main.swift
//  Mumbling
//
//  Created by morse on 10/3/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func accum(_ s: String) -> String {
    
//    "Best Practices/Clever" solution
    return s.enumerated().map { index, character in
        repeatElement(String(character), count: index + 1).joined().capitalized }.joined(separator: "-")
//      My original solution:
//    var result = ""
//    for (index, letter) in s.enumerated() {
//        result.append(letter.uppercased())
//        for _ in 0..<index {
//            result.append(letter.lowercased())
//        }
//        if s.count - 1 > index {
//            result.append("-")
//        }
//    }
    //    My refactored solution (needs result from above solution):
//    s.enumerated().map { index, character in
//        result.append(String((0...index).map { _ in character }).capitalized)
//        result.append(s.count - 1 > index ? "-" : "")
//    }
//    return result
}

func testAccum() {
    assert(accum("abcd") == "A-Bb-Ccc-Dddd")
    assert(accum("cwAt") == "C-Ww-Aaa-Tttt")
    assert(accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
}
testAccum()
print("passed!")
