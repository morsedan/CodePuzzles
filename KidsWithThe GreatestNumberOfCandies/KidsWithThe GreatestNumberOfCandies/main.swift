//
//  main.swift
//  KidsWithThe GreatestNumberOfCandies
//
//  Created by morse on 6/2/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

// https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let maxCandies = candies.max() else { return [] }
        var canBeMax: [Bool] = []
        for number in candies {
            if number + extraCandies >= maxCandies {
                canBeMax.append(true)
            } else {
                canBeMax.append(false)
            }
        }
        return canBeMax
    }
}

let s = Solution()
var candies = [4,2,1,1,2]
var extraCandies = 1

print(s.kidsWithCandies(candies, extraCandies)) // [true,false,false,false,false]

candies = [12,1,12]
extraCandies = 10
print(s.kidsWithCandies(candies, extraCandies)) // [true,false,true]
