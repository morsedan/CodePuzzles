//
//  main.swift
//  Generics
//
//  Created by morse on 9/26/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

import Foundation

/*
Alter the function declaration to work with the following types:
Int, UInt, Float, Double
*/
func sumOfThree<T: Numeric>(_ a: T, _ b: T, _ c: T) -> T {
    return a + b + c
}

