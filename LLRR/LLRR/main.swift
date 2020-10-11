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
        
        
        return nil
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

func recursiveReverse(list: Node?) -> Node? {
    
    if list == nil {
        return list
    }
    if list?.next == nil {
        return list
    }
    
    var head = list
    let new = recursiveReverse(list: head?.next)
    head!.next!.next = head
    head?.next = nil
    
    
    return new
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
    let list: Node? = Node(4)
    list?.next = Node(9)
    let listArr = Node.buildArrayFromList(list)
    let revListArr = Node.buildArrayFromList(recursiveReverse(list: list))
    assert(revListArr.reversed() ==  listArr)
}

func testRecursiveReverseFiveItems() {
    let node = Node(2)
    node.next = Node(1)
    node.next?.next = Node(3)
    node.next?.next?.next = Node(6)
    
    let nodeList = Node.buildArrayFromList(node)
    let revList = recursiveReverse(list: node)
    let revNodeList = Node.buildArrayFromList(revList)
    
    assert(revNodeList.reversed() == nodeList)
    
//    let list:Node? = Node.buildListFromArray([2, 1, 3, 6, 5])
//    assert(linkedListsEqual(first: recursiveReverse(list: list), second: buildListFromArray([5, 6, 3, 1, 2])))
}

//func testRecursiveReverseSeveralItems() {
//    let list:Node? = buildListFromArray([9, 32, 4, 1, 35, 13, 41, 9, 42, 1, 7, 5, 4])
//    assert(linkedListsEqual(first: recursiveReverse(list: list), second: buildListFromArray(
//        [4, 5, 7, 1, 42, 9, 41, 13, 35, 1, 4, 32, 9]))
//    )
//}

testRecursiveReverseEmptyList()
testRecursiveReverseOneItem()
testRecursiveReverseTwoItems()
testRecursiveReverseFiveItems()
//testRecursiveReverseSeveralItems()
print("passed!")
