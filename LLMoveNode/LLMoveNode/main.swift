//
//  main.swift
//  LLMoveNode
//
//  Created by morse on 9/26/20.
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

struct Context {
    var source:Node?
    var dest:Node?
}

func moveNode(source:Node?, dest:Node?) throws -> Context? {
    if source == nil || dest == nil {
        throw NSError(domain: "domain", code: 1, userInfo: nil)
    }
    let second = source?.next
    let head = source
    head?.next = dest
    return Context(source: second, dest: head)
}

func printList(head: Node) {
    var current: Node? = head
    while current != nil {
        print(current!.data)
        current = current?.next
    }
}

let node1 = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)
let node5 = Node(5)
let node6 = Node(6)

node1.next = node2
node2.next = node3
node4.next = node5
node5.next = node6

printList(head: node1)
printList(head: node4)

var source = node1
var dest = node4

let newContext = try? moveNode(source: source, dest: dest)
print("source")
printList(head: (newContext?.source!)!)
print("dest")
printList(head: (newContext?.dest!)!)

do {
    try print(moveNode(source: nil, dest: nil))
} catch {
    print(error)
}
