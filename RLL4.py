class LinkedListNode:
    def __init__(self, value):
        self.value = value
        self.next = None

class LinkedList:
    def __init__(self, head_value):
        head = LinkedListNode(head_value)
        self.head = head

    def append(self, value):
        new_node = LinkedListNode(value)
        tail = self.head
        while tail.next is not None:
            tail = tail.next
        tail.next = new_node

    def print_nodes(self):
        values = []
        node = self.head
        while node is not None:
            values.append(str(node.value))
            node = node.next
        print(" -> ".join(values))

    def reverse(self):
        new_head = self.head
        next_node = None
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


llist = LinkedList(1)
llist.append(2)
llist.append(3)
llist.append(4)
llist.append(5)
llist.append(6)

llist.print_nodes()
llist.reverse()
llist.print_nodes()
llist.rec_rev(llist.head)
llist.print_nodes()