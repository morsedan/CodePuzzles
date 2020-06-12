//
//  main.swift
//  TailRecursion
//
//  Created by morse on 6/5/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

func fibonacci(_ number: Int) -> Int {
    if number <= 1 {
        return number
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}

#warning("This isn't working yet.")
func memoizedFibonacci(_ number: Int) -> Int {
    var thisDict: [Int: Int] = [:]
    if number <= 1 {
        return number
    }
    if thisDict.keys.contains(number) {
        return thisDict[number]!
    } else {
        thisDict[number] = fibonacci(number)
    }
    return thisDict[number]!
}

func tailFibonacci(_ number: Int, accumulator: Int = 0) -> Int {
    if number <= 1 {
        return number
    }
    return go(number1: number - 1, number2: (0, 1))
}

func go(number1: Int, number2: (Int, Int)) -> Int{
    if number1 == 0 {
        return number1
    } else if number1 == 1 {
        return number2
    } else {
        return go(number1: number2 - 1, number2: number1 + number2)
    }
}

let number = 40
var startTime = CFAbsoluteTimeGetCurrent()
print(fibonacci(number))
var finishTime = CFAbsoluteTimeGetCurrent()

print("With fibonacci(), found \(number)th fibonacci number in \(finishTime - startTime)")

startTime = CFAbsoluteTimeGetCurrent()
print(memoizedFibonacci(number))
finishTime = CFAbsoluteTimeGetCurrent()

print("With memoizedFibonacci(), found \(number)th fibonacci number in \(finishTime - startTime)")

startTime = CFAbsoluteTimeGetCurrent()
print(tailFibonacci(number))
finishTime = CFAbsoluteTimeGetCurrent()

print("With tailFibonacci(), found \(number)th fibonacci number in \(finishTime - startTime)")
