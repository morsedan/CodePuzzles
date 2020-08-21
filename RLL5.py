class LinkedListNode:
    def __init__(self, value):
        self.value = value
        self.next = None

class LinkedList:
    def __init__(self, value):
        node = LinkedListNode(value)
        self.head = node

    def append(self, value):
        new_node = LinkedListNode(value)
        node = self.head
        while node.next is not None:
            node = node.next
        node.next = new_node

    def print_all(self):
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


ll = LinkedList(1)
ll.append(2)
ll.append(3)
ll.append(4)
ll.append(5)
ll.append(6)
ll.print_all()
ll.reverse()
ll.print_all()
ll.rec_rev(ll.head)
ll.print_all()