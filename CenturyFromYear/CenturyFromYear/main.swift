//
//  main.swift
//  CenturyFromYear
//
//  Created by morse on 9/13/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func century(_ year: Int) -> Int {
    let cent = year / 100
    return year % 100 == 0 ? cent : cent + 1
}

print(century(1900))
