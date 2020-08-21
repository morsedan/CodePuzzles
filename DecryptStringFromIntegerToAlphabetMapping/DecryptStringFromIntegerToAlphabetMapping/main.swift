//
//  main.swift
//  DecryptStringFromIntegerToAlphabetMapping
//
//  Created by morse on 7/22/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

/*
 Break main string into substrings by "#"
 The last two characters of any substring will be a single letter
 If the last character in s is "#", then the final two characters will be a single letter, otherwise they are two letters
 Once this is done, just decode it.
 */

class Solution {
    func freqAlphabets(_ s: String) -> String {
        let subStrings = s.split(separator: "#")
        let newString = ""
        
        print(subStrings)
        for subString in subStrings {
            //            print(subString.count)
            let secondLastIndex = subString.index(subString.lastIndex(of: subString.last!)!, offsetBy: 1)
            let lastIndex = subString.lastIndex(of: subString.last!)!
            print(String(subString[lastIndex]))
        }
        
        return newString
    }
    
    func numberToLetter(_ number: String) -> String {
        switch number {
        case "1": return "a"
        case "2": return "b"
        case "3": return "c"
        case "4": return "d"
        case "5": return "e"
        case "6": return "f"
        case "7": return "g"
        case "8": return "h"
        case "9": return "i"
        case "10": return "j"
        case "11": return "k"
        case "12": return "l"
        case "13": return "m"
        case "14": return "n"
        case "15": return "o"
        case "16": return "p"
        case "17": return "q"
        case "18": return "r"
        case "19": return "s"
        case "20": return "t"
        case "21": return "u"
        case "22": return "v"
        case "23": return "w"
        case "24": return "x"
        case "25": return "y"
        case "26": return "z"
        default: return ""
        }
    }
}

let s = Solution()

let test1 = "10#11#12" // "jkab"
let test2 = "1326#" // "acz"
let test3 = "25#" // y
let test4 = "12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#" // "abcdefghijklmnopqrstuvwxyz"
let test5 = "" // ""

//print(s.freqAlphabets(test1))
//print(s.freqAlphabets(test2))
//print(s.freqAlphabets(test3))
//print(s.freqAlphabets(test4))
//print(s.freqAlphabets(test5))
var i = 20
while i > 0 {
    i /= 2
    print(i)
}
print("s")

extension Array {
    func getNs(num: Int) -> Int {
        var count = 0
        for number in arr {
            var mutableNumber = number
            while mutableNumber > 0 {
                if mutableNumber % 10 == num {
                    count += 1
                }
                mutableNumber /= 10
            }
        }
        return count
    }
}


let arr = [22, 34, 55, 515, 5555]
print(arr.getNs(num: 5))
