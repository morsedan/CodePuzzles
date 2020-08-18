//
//  main.swift
//  RotateImage
//
//  Created by morse on 8/18/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func rotateImage(a: [[Int]]) -> [[Int]] {
    var arr = a
    
    for x in 0..<a.count {
        for y in 0..<a[0].count {
            arr[x][y] = a[a.count - 1 - y][x]
        }
    }
    return arr
}

let array = [[1,2,3,4],
             [4,5,6,7],
             [7,8,9,0],
             [1,3,5,7]]
for item in rotateImage(a: array) {
    print(item)
}
var arr1 = array
var arr2 = array
swap(&arr1[0][0], &arr2[2][2])
print(arr1[0][0])
print(arr1)
var a = 1
var b = 2
swap(&a, &b)
print(a, b)

"""
x is inner arrays
y is outer arrays

[1,2,3]
[4,5,6]
[7,8,9]

[7,4,1]
[8,5,2]
[9,6,3]

y becomes x
x becomes the inverse of y
"""
