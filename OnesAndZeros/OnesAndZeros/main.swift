//
//  main.swift
//  OnesAndZeros
//
//  Created by morse on 6/20/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Solution {
    func findMaxForm(_ strs: [String], _ m: Int, _ n: Int) -> Int {
        var canFormCount = 0
        var zeroesToUse = m
        var onesToUse = n
        var sortedStrings = strs.sorted {$0.count < $1.count}
        var sortedBy = 0
        
        while zeroesToUse >= 0 && onesToUse >= 0 {
            if zeroesToUse > onesToUse {
                sortedStrings = sortedByOnes(sortedStrings).reversed()
                sortedBy = 1
            } else {
                sortedStrings = sortedByZeroes(sortedStrings).reversed()
                sortedBy = 0
            }
            
//            print("Sorted:", sortedStrings)
            
            guard let string = sortedStrings.popLast() else { return canFormCount }
            
            var zeroesToEliminate = 0
            var onesToEliminate = 0
            
            for character in string {
                if character == "0" {
                    zeroesToEliminate += 1
                } else if character == "1" {
                    onesToEliminate += 1
                }
            }
            
            if zeroesToEliminate <= zeroesToUse && onesToEliminate <= onesToUse {
                canFormCount += 1
                zeroesToUse -= zeroesToEliminate
                onesToUse -= onesToEliminate
//                print(zeroesToUse, onesToUse, canFormCount)
            } else if onesToEliminate > onesToUse && sortedBy == 0 {
                sortedStrings = sortedByOnes(sortedStrings)
//                print("1", sortedStrings)
                return canFormCount
            } else if zeroesToEliminate > zeroesToUse && sortedBy == 1 {
                print("HERE!")
                var shouldKeepTrying = true
                sortedStrings = sortedByZeroes(sortedStrings)
                while shouldKeepTrying {
                    guard let string = sortedStrings.popLast() else { return canFormCount }
                    
                    var zeroesToEliminate = 0
                    var onesToEliminate = 0
                    
                    for character in string {
                        if character == "0" {
                            zeroesToEliminate += 1
                        } else if character == "1" {
                            onesToEliminate += 1
                        }
                    }
                    if zeroesToEliminate >= zeroesToUse && onesToEliminate >= onesToUse {
                        canFormCount += 1
                        zeroesToUse -= zeroesToEliminate
                        onesToUse -= onesToEliminate
                    } else {
                        return canFormCount
                    }
                }
//                print("0", sortedStrings)
                return canFormCount
            } else {
//                print("What?")
                return canFormCount
            }
        }
        
//        for string in sortedStrings {
//            for character in string {
//                if character == "0" {
//                    zeroesToUse -= 1
//                } else if character == "1" {
//                    onesToUse -= 1
//                }
//            }
//            if zeroesToUse >= 0 && onesToUse >= 0 {
//                canFormCount += 1
//            } else {
//                return canFormCount
//            }
//        }
        
        return canFormCount
    }
    
    func sortedByZeroes(_ strings: [String]) -> [String] {
        return strings.sorted {
            var lhsZeroes = 0
            var rhsZeroes = 0
            
            for character in $0 {
                if character == "0" {
                    lhsZeroes += 1
                }
            }
            for character in $1 {
                if character == "0" {
                    rhsZeroes += 1
                }
            }
            return lhsZeroes < rhsZeroes
        }
    }
    
    func sortedByOnes(_ strings: [String]) -> [String] {
        return strings.sorted {
            var lhsOnes = 0
            var rhsOnes = 0
            
            for character in $0 {
                if character == "1" {
                    lhsOnes += 1
                }
            }
            for character in $1 {
                if character == "1" {
                    rhsOnes += 1
                }
            }
            return lhsOnes < rhsOnes
        }
    }
}

let s = Solution()

var strings = ["10","0001","111001","1","0"]
var m = 5
var n = 3
print(s.findMaxForm(strings, m, n)) // 4

strings = ["10","0001","111001","1","0"]
m = 10
n = 1
print(s.findMaxForm(strings, m, n)) // 2

strings = ["0", "00", "000", "0001"]
m = 10
n = 1
print(s.findMaxForm(strings, m, n)) // 4

strings = ["1", "11", "111", "1110"]
m = 1
n = 10
print(s.findMaxForm(strings, m, n)) // 4

strings = ["0111", "001", "0001", "0001"]
m = 10
n = 3
print(s.findMaxForm(strings, m, n)) // 3


strings = ["10","0001","111001","1","0"]
m = 3
n = 2
print(s.findMaxForm(strings, m, n)) // 3
