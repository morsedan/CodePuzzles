//
//  main.swift
//  GrasshopperCheckForFactor
//
//  Created by morse on 9/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    return base % factor == 0
}


func basicTests() {
    assert(checkForFactor(10, 2) == true)
    assert(checkForFactor(63, 7) == true)
    assert(checkForFactor(2450, 5) == true)
    assert(checkForFactor(24612, 3) == true)
    assert(checkForFactor(9, 2) == false)
    assert(checkForFactor(653, 7) == false)
    assert(checkForFactor(2453, 5) == false)
    assert(checkForFactor(24617, 3) == false)
}
basicTests()
print("passed!")
