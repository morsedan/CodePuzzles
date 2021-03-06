//
//  main.swift
//  BouncingBalls
//
//  Created by morse on 10/17/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    var sightings = 0
    var newHeight = h
    
//    if h <= 0 || bounce <= 0 || bounce >= 1 || window >= h {
//        return -1
//    }
    guard h > 0 && bounce > 0 && bounce < 1 && window < h else {
        return -1
    }
    

    return Int(ceil(log(window / h) / log(bounce))) * 2 - 1
//
//    newHeight *= bounce
//    while newHeight > window {
//        sightings += 2
//        newHeight *= bounce
//    }
//    sightings += 1
//
//    return sightings

  /*
    newHeight *= bounce
    while newHeight > window {
        sightings += 2
        newHeight *= bounce
    }
    sightings += 1
    /*
     O([nearly]n) where n is height.
     */
    
    return sightings

  */
}

func testequal(_ h: Double, _ bounce: Double, _ window: Double, _ expected: Int) {
    assert(bouncingBall(h, bounce, window) == expected)
    print("pass", expected)
}

func testExample() {
    testequal(10, 0.6, 10, -1)
    testequal(40, 1, 10, -1)
    testequal(3, 0.66, 1.5, 3)
    testequal(30, 0.66, 1.5, 15)
}
testExample()
print("passed!")
