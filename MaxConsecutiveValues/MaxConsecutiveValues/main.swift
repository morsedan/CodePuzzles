import Foundation

/*
 Once:
 Put the elements into a countDict
 Get the sortedAmounts
 
 For Each Element in sortedAmounts:
 Determine max of next element to maintain consecutiveness
 Determine if next element is within max
    yes: increase current run
        Determine if current run > max run
            yes: increase max
            no: do nothing
    no: zero out current run, then restart from current element
 
 Finally:
 return max run
 */

class Solution {
    func getMaximumConsecutive(_ coins: [Int]) -> Int {
//        guard !coins.isEmpty else { return 0 }
//        var maxRun = 1
//        var currentMax = maxRun
//                   // Num: Quant
//        var countDict: [Int: Int] = [:]
//
//        for coin in coins {
//            countDict[coin, default: 0] += 1
//        }
//
//        let sortedAmounts = countDict.keys.sorted()
//
////        var currentMaxFullRun: [Int] = []
//
//        var nextAmountMax = sortedAmounts[0] + 1
//        var maxSpan: Int = 0//.max
//        for (index, amount) in sortedAmounts.enumerated() {
//
//            if nextAmountMax + maxSpan >= sortedAmounts[index + 1] {
//
//            } else {
//                currentMax = 1
//            }
//        }
//
//        return -1
        let sortedCoins = coins.sorted()
        var cur = 0
        
        for coin in coins {
            if cur + 1 >= coin {
                cur += coin
            } else {
                print("Escaping and returning: ", cur)
                return cur + 1
            }
        }
        
        return cur + 1
    }
}

let s = Solution()

// Test Cases
var coins = [1, 5, 10, 25, 50, 100]
var matches = 2
assert(s.getMaximumConsecutive(coins) == matches)
coins = [1, 1, 1, 4]
matches = 8
assert(s.getMaximumConsecutive(coins) == matches)
coins = [1, 4, 10, 3, 1]
matches = 20
assert(s.getMaximumConsecutive(coins) == matches)
coins = [1, 1, 4, 8, 11, 14]
matches = 9
assert(s.getMaximumConsecutive(coins) == matches)
coins = [3, 4, 5, 6, 7, 8, 9]
matches = 7
assert(s.getMaximumConsecutive(coins) == matches)
coins = [3, 4, 6, 8]
matches = 3
assert(s.getMaximumConsecutive(coins) == matches)

print("Tests passed!")
