//
//  main.swift
//  GroupThePeopleGivenTheGroupSizeTheyBelongTo
//
//  Created by morse on 7/13/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

/*
 for each person:
    if there's a dict entry for that size:
        do something
    otherwise:
        create one with that person as the first entry
    
 func do something
    if the last entry has 3 items, append a new one
 */



class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var groupDictionary: [Int:[[Int]]] = [:]
        
        for i in 0..<groupSizes.count {
            if groupDictionary.keys.contains(groupSizes[i]) {
                if groupSizes[i] == 1 {
                    if !groupDictionary[groupSizes[i]]!.contains([i]) {
                        groupDictionary[groupSizes[i]]!.append([i])
                    }
                    continue
                }
                
                for j in 0..<groupDictionary[groupSizes[i]]!.count {
                    
                    if groupDictionary[groupSizes[i]]!.last!.count >= groupSizes[i] {
                        groupDictionary[groupSizes[i]]!.append([i])
                    } else {
                        if groupDictionary[groupSizes[i]]![j].count == groupSizes[i] {
                            continue
                        }
                        groupDictionary[groupSizes[i]]![j].append(i)
                    }
                }
            } else {
                groupDictionary[groupSizes[i]] = [[]]
                groupDictionary[groupSizes[i]]?[0].append(i)
            }
        }
        
        var groups: [[Int]] = []
        for item in groupDictionary {
            for group in item.value {
                groups.append(group)
            }
        }
        return groups
    }
}

let s = Solution()

let input1 = [3,3,3,3,3,1,3] // [5],[0,1,2],[3,4,6]]
let input2 = [2,1,3,3,3,2] // [[1],[0,5],[2,3,4]]
let input3 = [3,4,3,3,4,4,3,4,3,3] // [[0,2,3],[6,8,9],[1,4,5,7]]
let input4 = [2,2,1,1,1,1,1,1] // [[2],[3],[4],[5],[6],[7],[0,1]]

print(s.groupThePeople(input1))
print(s.groupThePeople(input2))
print(s.groupThePeople(input3))
print(s.groupThePeople(input4))

//let dict = [3:[[0, 1, 2], [3, 4, 6]], 1:[[5]]]
//print(dict.keys.contains(1))
