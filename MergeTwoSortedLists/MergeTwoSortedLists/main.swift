//
//  main.swift
//  MergeTwoSortedLists
//
//  Created by morse on 5/28/20.
//  Copyright © 2020 morse. All rights reserved.
//

import Foundation


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var head: ListNode
        var head1: ListNode?
        var head2: ListNode?
        var currentNode: ListNode
        
        // get the head
        guard let h1 = l1 else { return l2 }
        guard let h2 = l2 else { return l1 }
        
        if h1.val < h2.val {
            head = h1
            head1 = h1.next
            head2 = h2
        } else {
            head = h2
            head2 = h2.next
            head1 = h1
        }
        currentNode = head
        // iterate through the remaining items in the list, add the smaller head to the tail of result
        while head1 != nil && head2 != nil {
            let val1 = head1!.val
            let val2 = head2!.val
            
            if val1 < val2 {
                currentNode.next = head1
                currentNode = head1!
                head1 = head1?.next
                currentNode.next = nil
            } else {
                currentNode.next = head2
                currentNode = head2!
                head2 = head2?.next
                currentNode.next = nil
            }
        }
        
        if head1 == nil {
            currentNode.next = head2
        }
        if head2 == nil {
            currentNode.next = head1
        }
        
        return head
    }
}

func printList(_ head: ListNode) {
    var node = head
    while node.next != nil {
        print(node.val)
        guard let newNode = node.next else { break }
        node = newNode
    }
    print(node.val)
}

let s = Solution()

//Input: 1->2->4, 1->3->4

let a = ListNode(1)
let b = ListNode(2)
a.next = b
let c = ListNode(4)
b.next = c

let x = ListNode(1)
let y = ListNode(3)
x.next = y
let z = ListNode(4)
y.next = z

//Output: 1->1->2->3->4->4
var output = s.mergeTwoLists(a, x)
printList(output ?? ListNode(0))

//Input: 1->1->1, 1->3->4
//Output: 1->1->1->1->3->4

let d = ListNode(1)
let e = ListNode(1)
d.next = e
let f = ListNode(1)
e.next = f

let n = ListNode(1)
let m = ListNode(3)
n.next = m
let o = ListNode(4)
m.next = o

output = s.mergeTwoLists(d, n)
printList(output ?? ListNode(0))
