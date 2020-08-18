class ListNode:
    def __init__(self, value, next=None):
        self.value = value
        self.next = next

class LinkedList:
    def __init__(self, head=None):
        self.head = head

    def print_all_nodes(self):

        node = self.head
        values = [str(node.value)]
        while node.next is not None:
            values.append(str(node.next.value))
            node = node.next
        print(" -> ".join(values))

    def reverse(self):
        new_head = self.head
        # next_node = None
        previous = None

        while new_head is not None:
            next_node = new_head.next
            new_head.next = previous
            previous = new_head
            new_head = next_node

        self.head = previous
        return self.head

    def rec_rev(self, node):
        if node is None:
            return node
        if node.next is None:
            return node

        next_node = self.rec_rev(node.next)
        node.next.next = node
        node.next = None
        self.head = next_node
        return self.head



node1 = ListNode(1)
node2 = ListNode(2)
node1.next = node2
node3 = ListNode(3)
node2.next = node3
node4 = ListNode(4)
node3.next = node4
node5 = ListNode(5)
node4.next = node5

ll = LinkedList(node1)

ll.print_all_nodes()

ll.reverse()
ll.print_all_nodes()
ll.rec_rev(ll.head)
ll.print_all_nodes()