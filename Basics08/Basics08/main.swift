//
//  main.swift
//  Basics08
//
//  Created by morse on 9/26/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func nextHigher(_ n: Int) -> Int {
    var next = n + 1
    while next.nonzeroBitCount != n.nonzeroBitCount {
        next += 1
    }
    return next
}

func basicTests() {
    assert(nextHigher(128) == 256)
    assert(nextHigher(1) == 2)
    assert(nextHigher(1022) == 1279)
    assert(nextHigher(127) == 191)
    assert(nextHigher(1253343) == 1253359)
}
basicTests()
print("passed!")
