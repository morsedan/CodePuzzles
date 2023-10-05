//
//  TapController.swift
//  CountTaps
//
//  Created by Dan Morse on 10/4/23.
//

import Foundation

struct Tap {
    var quantity: Int
}

class TapController {
    var taps: [Tap] = []
    
    init() {
        for _ in 1...50 {
            taps.append(Tap(quantity: 0))
        }
    }
    
    func step(_ tapIndices: [Int]) {
        for tapIndex in tapIndices {
            if tapIndex < taps.count {
                taps[tapIndex].quantity += 1
            }
        }
    }
}
