//
//  main.swift
//  AccountMerge
//
//  Created by morse on 6/23/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func accountsMerge(_ accounts: [[String]]) -> [[String]] {
        var mergedAccounts: [[String]] = []
        var accountDictionary: [String:[[String]]] = [:]
        
        let email = accounts[0][1]
        let name = accounts[0][0]
        print(name, email)
        accountDictionary[name] = []
        accountDictionary[accounts[0][0]]!.append([email])
        
        for account in accounts {
            if accountDictionary.keys.contains(account[0]) {
                print("here", accountDictionary[account[0]]!)
            }
        }
        
        for name in accountDictionary {
            print(name)
            for list in name.value {
                for address in list {
                    print(address)
                }
            }
        }
        
        
        
        
        
        return accounts
    }
}

let accounts = [["John", "johnsmith@mail.com", "john00@mail.com"], ["John", "johnnybravo@mail.com"], ["John", "johnsmith@mail.com", "john_newyork@mail.com"], ["Mary", "mary@mail.com"]]

let s = Solution()
//s.accountsMerge(accounts)


