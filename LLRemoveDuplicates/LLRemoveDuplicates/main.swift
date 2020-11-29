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

func listToArray(_ head: Node?) -> [Int]? {
    if head == nil {
        return nil
    }
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
    if head == nil {
        return nil
    }
    var current = head
    
    while current?.next != nil {
        while current!.data == current?.next?.data {
            current?.next = current?.next?.next
        }
        current = current?.next
    }
    return head
}

func testRemoveDuplicates() {
    let c: [Int]? = nil
    let d: [Int]? = nil
    let cList = arrayToList(c)
    let noDupCList = removeDuplicates(head: cList)
    let noDupC = listToArray(noDupCList)
    assert(noDupC == d)
    
    let a = [1, 1, 1, 2, 3]
    let b = [1, 2, 3]
    let aList = arrayToList(a)
    let noDupAList = removeDuplicates(head: aList)
    let noDupA = listToArray(noDupAList)
    assert(noDupA == b)
    
    
    
    var e: [Int]? = nil
    var f: [Int]? = nil
    var eList = arrayToList(e)
    var noDupEList = removeDuplicates(head: eList)
    var noDupE = listToArray(noDupEList)
    assert(noDupE == f)
    
    e = [1, 2, 3]
    f = [1, 2, 3]
    eList = arrayToList(e)
    noDupEList = removeDuplicates(head: eList)
    noDupE = listToArray(noDupEList)
    assert(noDupE == f)
    
    e = [1, 2, 3, 3, 3, 4, 5, 5, 5, 6, 7]
    f = [1, 2, 3, 4, 5, 6, 7]
    eList = arrayToList(e)
    noDupEList = removeDuplicates(head: eList)
    noDupE = listToArray(noDupEList)
    assert(noDupE == f)
    
    e = [1, 2, 3, 4, 5, 5, 5, 5, 5]
    f = [1, 2, 3, 4, 5]
    eList = arrayToList(e)
    noDupEList = removeDuplicates(head: eList)
    noDupE = listToArray(noDupEList)
    assert(noDupE == f)
    
    print("passed!")
}

testRemoveDuplicates()
