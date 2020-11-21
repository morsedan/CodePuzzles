//
//  main.swift
//  LLRemoveDuplicates
//
//  Created by morse on 11/21/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func arrayToList(_ numbers: [Int]?) -> Node? {
    if numbers == nil {
        return nil
    }
    var currentIndex = 1
    var head: Node? = nil
    var currNode: Node? = nil
    while currentIndex <= numbers!.count {
        let data = numbers![currentIndex - 1]
        if head == nil {
            head = Node(data)
            currNode = head
            currentIndex += 1
            continue
        }
        currNode?.next = Node(numbers![currentIndex - 1])
        currNode = currNode?.next
        currentIndex += 1
    }
    return head
}

func listToArray(_ head: Node?) -> [Int] {
    var numbers: [Int] = []
    
    var current = head
    while current != nil {
        numbers.append(current!.data)
        current = current?.next
    }
    
    return numbers
}

func printList(head: Node?) {
    if head == nil {
        return
    }
    var listString = ""
    var current = head
    while current?.next != nil {
        listString += "\(current!.data) -> "
        current = current?.next
    }
    listString.append(contentsOf: "\(current!.data)")
    print(listString)
}

func removeDuplicates(head:Node?) -> Node? {
    var node: Node? = nil
    
    return node
}

func testRemoveDuplicates() {
    let a = [1, 1, 1, 2, 3]
    let b = [1, 2, 3]
    let aList = arrayToList(a)
    let noDupAList = removeDuplicates(head: aList)
    let noDupA = listToArray(noDupAList)
    assert(noDupA == b)
    
    let c: [Int]? = nil
    let d: [Int]? = nil
    let cList = arrayToList(c)
    let noDupCList = removeDuplicates(head: cList)
    let noDupC = listToArray(noDupCList)
    assert(noDupC == d)
    
    let e: [Int]? = nil
    let f: [Int]? = nil
    let eList = arrayToList(e)
    let noDupEList = removeDuplicates(head: eList)
    let noDupE = listToArray(noDupEList)
    assert(noDupE == f)

    //nil nil
    //
    //[1, 2, 3] [1, 2, 3]
    //
    //[1, 2, 3, 3, 3, 4, 5, 5, 5, 6, 7] [1, 2, 3, 4, 5, 6, 7]
    //
    //[1, 2, 3, 4, 5, 5, 5, 5, 5] [1, 2, 3, 4, 5]
}

testRemoveDuplicates()
