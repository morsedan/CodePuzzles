//
//  main.swift
//  MultiplesOf3Or5
//
//  Created by morse on 9/13/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func solution(_ num: Int) -> Int {
    if num < 3 { return 0 }
    return (3..<num).reduce(0) {
        return $1 % 3 == 0 || $1 % 5 == 0 ? $0 + $1 : $0
    }
}

assert(solution(10) == 23)
assert(solution(20) == 78)
assert(solution(200) == 9168)
print("passed")
