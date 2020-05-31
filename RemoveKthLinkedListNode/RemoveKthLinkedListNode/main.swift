//
//  main.swift
//  RemoveKthLinkedListNode
//
//  Created by morse on 5/29/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation

final class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?

    public init(nodeData: Int) {
        self.data = nodeData
    }
}

final class SinglyLinkedList {
    var head: SinglyLinkedListNode?
    var tail: SinglyLinkedListNode?

    public init() {}

    public func insertNode(nodeData: Int) {
        self.insertNode(node: SinglyLinkedListNode(nodeData: nodeData))
    }

    private func insertNode(node: SinglyLinkedListNode) {
        if let tail = tail {
            tail.next = node
        } else {
            head = node
        }

        tail = node
    }
}

func printSinglyLinkedList(head: SinglyLinkedListNode?, sep: String, fileHandle: FileHandle) {
    var node = head

    while node != nil {
        fileHandle.write(String(node!.data).data(using: .utf8)!)

        node = node!.next

        if node != nil {
            fileHandle.write(sep.data(using: .utf8)!)
        }
    }
}



/*
 * Complete the 'removeKthLinkedListNode' function below.
 *
 * The function is expected to return an INTEGER_SINGLY_LINKED_LIST.
 * The function accepts following parameters:
 *  1. INTEGER_SINGLY_LINKED_LIST head
 *  2. INTEGER k
 */

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     data: Int
 *     next: SinglyLinkedListNode?
 * }
 *
 */

func removeKthLinkedListNode(head: SinglyLinkedListNode?, k: Int) -> SinglyLinkedListNode? {
    // Write your code here
    var tailList: SinglyLinkedListNode?
    var tailListCount = 0
    var listCount = 0
    
    var node = head
    tailList = node
    
    while node != nil {
        while tailListCount <= k {
            node = node?.next
            tailListCount += 1
            listCount += 1
            if node == nil {
                if listCount < k {
                    return head
                }
                if listCount == tailListCount {
                    tailList = tailList?.next
                    return tailList
                }
            }
        }
        tailList = tailList?.next
        node = node?.next
        listCount += 1
    }
    
    let nodeToDelete = tailList?.next
    tailList?.next = nodeToDelete?.next
    
    return head
}

func printList(_ list: SinglyLinkedList) {
    var node = list.head
    while node != nil {
        print(node!.data)
        node = node?.next
    }
}

let l = SinglyLinkedList()
l.insertNode(nodeData: 1)
l.insertNode(nodeData: 2)
l.insertNode(nodeData: 3)
l.insertNode(nodeData: 4)
l.insertNode(nodeData: 5)
l.insertNode(nodeData: 6)

printList(l)
let j = removeKthLinkedListNode(head: l.head, k: 6)
print(j?.data)
