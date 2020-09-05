//
//  main.swift
//  SumofOddNumbers
//
//  Created by morse on 9/5/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

/*
 increment layer by the formula
 add 2, 4, 6, 8, etc
 */

func rowSumOddNumbers(_ row: Int) -> Int {
    return row * row * row
}



print(rowSumOddNumbers(1)) // 1
print(rowSumOddNumbers(2)) // 8
print(rowSumOddNumbers(3)) // 27
