//
//  main.swift
//  HammingDistance
//
//  Created by morse on 6/17/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var hammingDistance = 0
        let larger = [x, y].max()!
        let smaller = [x, y].min()!
        let binaryLarger = String(larger, radix: 2)
        var binarySmaller = String(smaller, radix: 2)
        
        while binarySmaller.count < binaryLarger.count {
            binarySmaller = "0" + binarySmaller
        }
        
        for offset in 0..<binaryLarger.count {
            let largeCharacter = binaryLarger[binaryLarger.index(binaryLarger.startIndex, offsetBy: offset)]
            let smallCharacter = binarySmaller[binarySmaller.index(binarySmaller.startIndex, offsetBy: offset)]
            if largeCharacter != smallCharacter {
                hammingDistance += 1
            }
        }
        return hammingDistance
    }
}

let x1 = 1
let y1 = 4

let s = Solution()
print(s.hammingDistance(x1, y1))

