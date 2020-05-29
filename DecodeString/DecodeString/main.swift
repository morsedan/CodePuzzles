//
//  main.swift
//  DecodeString
//
//  Created by morse on 5/28/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func decodeString(_ s: String) -> String {
        
        "3[a] 2[bc]"
        "3[a2[c]]"
        "2[abc]3[cd]ef"
        
        for slice in s.split(separator: "[") {
            for index in 0..<slice.split(separator: "]").count {
                if "1234567890".contains(slice.split(separator: "]")[index]) {
                    print(slice.split(separator: "]")[index])
                } else {
                    print("Thing: \(slice.split(separator: "]")[index])")
                }
                
                    
            }
        }
        
        return ""
    }
}

let sol = Solution()

var s = "3[a]2[bc]" // "3[a]2[bc]" -> "aaabcbc"
var d = sol.decodeString(s)
print(d)

s = "3[a2[c]]"      // "3[a2[c]]" -> "accaccacc"
d = sol.decodeString(s)
print(d)

s = "2[abc]3[cd]ef" // "2[abc]3[cd]ef" -> "abcabccdcdcdef"
d = sol.decodeString(s)
print(d)
