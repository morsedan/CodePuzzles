//
//  main.swift
//  AddTwoNumbers
//
//  Created by morse on 5/26/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

//class Solution {
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        if l1 == nil {
//            return l2
//        } else if l2 == nil {
//            return l1
//        }
//
//        let number1 = self.getNumber(from: l1!)
//        let number2 = self.getNumber(from: l2!)
//        return getHead(from: number1 + number2)
//    }
//
//    func getNumber(from head: ListNode) -> Double {
//        var number = 0.0
//        var multiplier = 1.0
//        var node = head
//        while true {
//            number += Double(node.val) * multiplier
//            multiplier *= 10
//            guard let unwrappedNode = node.next else { return number }
//            node = unwrappedNode
//        }
//    }
//
//    func getHead(from int: Double) -> ListNode {
//        let divisor = 10.0
//        var number = int
//        print(number)
//        print(number.truncatingRemainder(dividingBy: divisor))
//        var node = ListNode(Int(number.truncatingRemainder(dividingBy: divisor)))
//        let head = node
//        number /= divisor
//        while number > 0 {
//            let value = number.truncatingRemainder(dividingBy: divisor)
//            number /= divisor
//            print("value:", value)
//            print("number:", number)
//            let newNode = ListNode(Int(value))
//            node.next = newNode
//
//            node = newNode
//
//
//        }
//        return head
//    }
//}

class Solution {
    
    var shouldCarry = false
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let list1 = l1 else { return l2 }
        guard let list2 = l2 else { return l1 }
        
        var reversed1 = self.reverse(node: list1).head
        var reversed2 = self.reverse(node: list2).head
        
//        printList(head: reversed1)
//        printList(head: reversed2)
        
        var addedList: ListNode? = nil
        let addedHead: ListNode = ListNode(20)
        
        while reversed1.next != nil && reversed2.next != nil {
            printList(head: addedHead)
            
            var total = reversed1.val + reversed2.val
            if shouldCarry {
                total += 1
                shouldCarry = false
            }
            if total >= 10 {
                shouldCarry = true
                total = total % 10
            }
            print("total", total)
            if addedHead.val == 20 {
                addedHead.val = total
                addedList = addedHead
//                if shouldCarry {
//                    let temp = ListNode(addedHead.val)
////                    addedHead.val = 1
//                    addedList?.val = 1
//                    addedList?.next = temp
//                    addedList = addedList?.next
//                    shouldCarry = false
//                }
            } else {
                addedList?.next = ListNode(total)
                addedList = addedList?.next
            }
            reversed1 = reversed1.next!
            reversed2 = reversed2.next!
        }
        
        var newTotal = reversed1.val + reversed2.val
        print("newTotal:", newTotal)
        if newTotal >= 10 {
            shouldCarry = true
            newTotal = newTotal % 10
        }
        
        if addedHead.val == 20 {
            addedHead.val = newTotal
            if reversed1.next == nil {
                if let temp = reversed2.next {
                    reversed2 = temp
                    newTotal = reversed2.val
                }
            }
            if reversed2.next == nil {
                if let temp = reversed1.next {
                    reversed1 = temp
                    newTotal = reversed1.val
                }
            }
        }
        
        
        if reversed1.next == nil {
            addedList?.next = ListNode(newTotal)
            addedList = addedList?.next
            while reversed2.next != nil {
                if shouldCarry {
                    reversed2.next?.val += 1
                    shouldCarry = false
                }
                addedList?.next = reversed2.next
//                print("r1 is nil", reversed2.next?.val)
                reversed2 = reversed2.next!
            }
            if shouldCarry {
                reversed2.next?.val += 1
                shouldCarry = false
            }
            addedList?.next = reversed2
        }
        if reversed2.next == nil {
//            print("adding", reversed1.val + reversed2.val)
            addedList?.next = ListNode(newTotal)
            addedList = addedList?.next
            while reversed1.next != nil {
                if shouldCarry {
                    reversed1.next?.val += 1
                    shouldCarry = false
                }
                addedList?.next = reversed1.next
//                print("r2 is nil", reversed1.next?.val)
                reversed1 = reversed1.next!
            }
            if shouldCarry {
                reversed1.next?.val += 1
                shouldCarry = false
            }
            addedList?.next = reversed1
        }
        
        return reverse(node: addedHead).head
    }
    
    func addNodes(_ node1: ListNode, and node2: ListNode) -> Int {
        return node1.val + node2.val
    }
    
    func reverse(node: ListNode) -> (node: ListNode, head: ListNode) {
        if node.next == nil {
            return (node: node, head: node)
        }
        let pair = reverse(node: node.next!)
        let next = pair.node
        let actualHead = pair.head
        
        node.next = next.next
        next.next = node
        node.next = nil

        return (node: node, head: actualHead)
    }
}

func printList(head: ListNode) {
    print("New list")
    var node = head
    while node.next != nil {
        print(node.val)
        node = node.next!
    }
    print(node.val)
}

let s = Solution()

let a = ListNode(1)
let b = ListNode(2)
a.next = b
let c = ListNode(3)
b.next = c
let d = ListNode(4)
c.next = d

//var new = s.reverse(node: a).head
//
//while new.next != nil {
//    print(new.val)
//    new = new.next!
//}
//print(new.val)

let e = ListNode(7)
let f = ListNode(1)
e.next = f
let g = ListNode(6)
f.next = g
//let h = ListNode(3)
//g.next = h
//
//new = s.reverse(node: e).head
//
//while new.next != nil {
//    print(new.val)
//    new = new.next!
//}
//print(new.val)

var answer = s.addTwoNumbers(a, e)!
print("Answer vvv")
printList(head: answer)
let t = Solution()
answer = t.addTwoNumbers(e, ListNode(1))!
print("Answer2 vvv")
printList(head: answer)

let numA = 1000000000000000000000000000001.0
let numB = 564
//print(25.0.truncatingRemainder(dividingBy: 4))

//for number in "5000" {
//    let str = String(number)
//    let int = Int(str)
//    print(int! + 1)
////    print(Int("5000"))
////    print(Int(number) + 1)
//}

//let numC: u_long = 708000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
