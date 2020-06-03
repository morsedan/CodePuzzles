//
//  main.swift
//  MinStack
//
//  Created by morse on 6/3/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class MinStack {
    
    var storage: [Int] = []
    var mins: [Int] = []
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
//        push x onto the storage stack
        storage.append(x)
        if mins == [] || x <= mins[mins.count - 1] {
            mins.append(x)
        }
    }
    
    func pop() {
        if storage[storage.count - 1] == mins[mins.count - 1] {
            storage.removeLast()
            mins.removeLast()
        } else {
            storage.removeLast()
        }
    }
    
    func top() -> Int {
        return storage.last!
    }
    
    func getMin() -> Int {
        return mins[mins.count - 1]
    }
}

let m = MinStack()

m.push(1)
m.push(2)
m.top()
m.getMin()
m.pop()
m.getMin()
m.top()
print("done")
