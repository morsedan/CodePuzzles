//
//  main.swift
//  FakeBinary
//
//  Created by morse on 9/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func fakeBin(digits: String) -> String {
    var bin = ""
    for digit in digits {
        if Int("\(digit)")! < 5 {
            bin += "0"
        } else {
            bin += "1"
        }
    }
    return bin
}

func testExample() {
    assert(fakeBin(digits: "45385593107843568") == "01011110001100111")
    assert(fakeBin(digits: "509321967506747") == "101000111101101")
    assert(fakeBin(digits: "366058562030849490134388085") == "011011110000101010000011011")
    assert(fakeBin(digits: "15889923") == "01111100")
    assert(fakeBin(digits: "800857237867") == "100111001111")
    assert(fakeBin(digits: "") == "")
}
testExample()
print("passed!")
