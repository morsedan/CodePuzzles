//
//  main.swift
//  RichestCustomerWealth
//
//  Created by morse on 12/12/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.reduce(0, { max($0, $1.reduce(0, +)) })
    }
//    func maximumWealth(_ accounts: [[Int]]) -> Int {
//        return accounts.sorted { $0.reduce(0, +) < $1.reduce(0, +) }.last!.reduce(0, +)
//    }
}
var accounts = [[1,2,3],[3,2,1]]
let s = Solution()
assert(s.maximumWealth(accounts) == 6)
accounts = [[2,8,7],[7,1,3],[1,9,5]]
assert(s.maximumWealth(accounts) == 17)
print("passed!")
