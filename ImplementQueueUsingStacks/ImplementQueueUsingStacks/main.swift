//
//  main.swift
//  ImplementQueueUsingStacks
//
//  Created by morse on 5/27/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class MyQueue {

    /** Initialize your data structure here. */
    var stack1 = [Int]()
    var stack2 = [Int]()
    
    init() {
        
    }
    
    func stackPush(_ x: Int, to stack: Int) {
        switch stack {
        case 1:
            stack1.append(x)
        case 2:
            stack2.append(x)
        default:
            return
        }
    }
    
    func stackPop(from stack: Int) -> Int {
        switch stack {
        case 1:
            guard let value = stack1.popLast() else { return 0 }
            return value
        case 2:
            guard let value = stack2.popLast() else { return 0 }
            return value
        default:
            return 0
        }
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        for _ in 0..<stack1.count {
            stackPush(stackPop(from: 1), to: 2)
        }
        stackPush(x, to: 1)
        for _ in 0..<stack2.count {
            stackPush(stackPop(from: 2), to: 1)
        }
        print(stack1, stack2)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        return stack1.remove(at: stack1.count - 1)
    }
    
    /** Get the front element. */
    func peek() -> Int {
        print("peek, stack1.count", stack1.count)
        return stack1[stack1.count - 1]
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return !(stack1.count > 0)
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */

let queue = MyQueue()

queue.push(1)
queue.push(2)
print(queue.peek())  // returns 1
print(queue.pop())   // returns 1
print(queue.empty()) // returns false
