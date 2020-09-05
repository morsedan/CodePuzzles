//
//  main.swift
//  ShortestWord
//
//  Created by morse on 9/5/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func find_short(_ str: String) -> Int {
    return str.split(separator: " ").sorted { $0.count < $1.count }[0].count
}

func testExample() {
    
    assert(3 == find_short("bitcoin take over the world maybe who knows perhaps"))
    assert(3 == find_short("lets talk about javascript the best language"))
    assert(1 == find_short("i want to travel the world writing code one day"))
    assert(2 == find_short("Lets all go on holiday somewhere very cold"))
    print("Passed")
}
testExample()
