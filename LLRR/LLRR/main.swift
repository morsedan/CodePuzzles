//
//  main.swift
//  LLRR
//
//  Created by morse on 10/11/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
    
    static func buildListFromArray(_ array: [Int]) -> Node? {
        let head: Node?
        var tail: Node?
        if array.count >= 1 {
            head = Node(array.first!)
            tail = head
        } else {
            return nil
        }
        for number in array[1..<array.count] {
            let node = Node(number)
            tail?.next = node
            tail = node
        }
        
        
        return head
    }
    
    static func buildArrayFromList(_ head: Node?) -> [Int] {
        var nodeArray = [Int]()
        var node = head
        
        while node != nil {
            nodeArray.append(node!.data)
            node = node?.next
        }
        return nodeArray
    }
}

//func recursiveReverse(list: Node?) -> Node? {
//    if list == nil {
//        return list
//    }
//    if list?.next == nil {
//        return list
//    }
//    let head = list
//    let new = recursiveReverse(list: head?.next)
//    head!.next!.next = head
//    head?.next = nil
//    
//    return new
//}

func recursiveReverse(list: Node?) -> Node? {
  guard let list = list else { return nil }
  guard let next = list.next else { return list }

  list.next = nil // Unlink to prevent cycles
  let reversed = recursiveReverse(list: next)
  next.next = list // Re-attach

  return reversed
}

func testRecursiveReverseEmptyList() {
    assert(recursiveReverse(list: nil) == nil)
}

func testRecursiveReverseOneItem() {
    let list: Node? = Node(2)
    let listArr = Node.buildArrayFromList(list)
    let revListArr = Node.buildArrayFromList(recursiveReverse(list: list))
    assert(revListArr.reversed() == listArr)
}

func testRecursiveReverseTwoItems() {
    let nodeList = [4, 9]
    let node = Node.buildListFromArray(nodeList)
    let revList = recursiveReverse(list: node)
    let revNodeList = Node.buildArrayFromList(revList)
    
    assert(revNodeList.reversed() == nodeList)
}

func testRecursiveReverseFiveItems() {
    let nodeList = [2, 1, 3, 6, 5]
    let node = Node.buildListFromArray(nodeList)
    let revList = recursiveReverse(list: node)
    let revNodeList = Node.buildArrayFromList(revList)
    
    assert(revNodeList.reversed() == nodeList)
}

func testRecursiveReverseSeveralItems() {
    let nodeList = [9, 32, 4, 1, 35, 13, 41, 9, 42, 1, 7, 5, 4]
    let node: Node? = Node.buildListFromArray(nodeList)
    let revList = recursiveReverse(list: node)
    let revNodeList = Node.buildArrayFromList(revList)
    
    assert(revNodeList.reversed() == nodeList)
}

testRecursiveReverseEmptyList()
testRecursiveReverseOneItem()
testRecursiveReverseTwoItems()
testRecursiveReverseFiveItems()
testRecursiveReverseSeveralItems()
print("passed!")
