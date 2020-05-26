//
//  main.swift
//  SockPairs
//
//  Created by morse on 5/25/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

/*
 John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
 For example, there are  socks with colors . There is one pair of color  and one of color . There are three odd socks left, one of each color. The number of pairs is .
 Function Description
 Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.
 sockMerchant has the following parameter(s):
 n: the number of socks in the pile
 ar: the colors of each sock
 Input Format
 The first line contains an integer , the number of socks represented in .
 The second line contains  space-separated integers describing the colors  of the socks in the pile.
 Constraints

  where
 Output Format
 Return the total number of matching pairs of socks that John can sell.
 Sample Input
 9
 10 20 20 10 10 30 50 10 20
 Sample Output
 3
 */

// Complete the sockMerchant function below.
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    var total = 0
    
    for number in ar {
        if let _ = counts[number] {
            counts[number]! += 1
        } else {
            counts[number] = 1
        }
        if counts[number] == 2 {
            total += 1
            counts[number] = 0
        }
    }
//
//    for quanitity in counts.values {
//        total += quanitity / 2
//    }
    
    return total
}

/*
 This solution runs in linear [ O(n) ] time. it touches each element in the array
 of numbers once. Then runs through the dictionary once.
 */

//let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
//FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
//let fileHandle = FileHandle(forWritingAtPath: stdout)!
//
//guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//else { fatalError("Bad input") }
//
//guard let arTemp = readLine() else { fatalError("Bad input") }
//let ar: [Int] = arTemp.split(separator: " ").map {
//    if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
//        return arItem
//    } else { fatalError("Bad input") }
//}
//
//guard ar.count == n else { fatalError("Bad input") }
//
//let result = sockMerchant(n: n, ar: ar)
//
//fileHandle.write(String(result).data(using: .utf8)!)
//fileHandle.write("\n".data(using: .utf8)!)

let nums = [10, 20, 20, 10, 10, 30, 50, 10, 20]

print(sockMerchant(n: nums.count, ar: nums))

