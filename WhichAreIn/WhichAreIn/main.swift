//
//  main.swift
//  WhichAreIn
//
//  Created by morse on 9/19/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation
func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    var result: Set<String> = []
    
    outer:
    for segment in a1 {
        for word in a2 {
            if word.contains(segment) {
                result.insert(segment)
            }
        }
    }
    
    return result.sorted()
}

func testExample() {
    var a1 = ["live", "arp", "strong"]
    var a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
    var r = ["arp", "live", "strong"]
    assert(inArray(a1, a2) == r)
    
    a1 = ["arp", "mice", "bull"]
    a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
    r = ["arp"]
    assert(inArray(a1, a2) == r)
}
testExample()
print("passed!")
